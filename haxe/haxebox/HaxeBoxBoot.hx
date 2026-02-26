package;

#if macro
import sys.FileSystem;
import sys.io.File;
import haxe.io.Path;
import haxe.macro.Context;
import haxe.macro.Compiler;

using StringTools;
#end

class HaxeBoxBoot {
	static inline var DEFAULT_STEAM_DIR = "C:/Program Files (x86)/Steam";
	static inline var DEFAULT_DOTNET_DIR = "C:/Program Files/dotnet";

	public static function init() {
		#if macro
		Compiler.registerCustomMetadata({metadata: ":ui.attr", doc: "Make field available as a node attribute"});
		Compiler.registerCustomMetadata({metadata: ":ui.markup", doc: "Build UI from markup expression"});
		Compiler.registerCustomMetadata({metadata: ":text", doc: "Add text to UI node"});
		Compiler.registerCustomMetadata({metadata: ":content", doc: "Add content to UI node"});

		var project = Context.definedValue("PROJECT_PATH");
		var haxebox = Context.definedValue("HAXEBOX_PATH");
		var outPath = Compiler.getOutput();
		var srcPaths = (Context.definedValue("CLASS_PATHS") ?? "").split(";");
		var exclude = (Context.definedValue("CLASS_EXCLUDE") ?? "").split(";");
		exclude.push(Path.withoutDirectory(outPath));

		if (project == null || haxebox == null)
			Context.fatalError("HaxeBox and project paths are not defined", Context.currentPos());

		var modules:Map<String, Bool> = [];
		for (sourcePath in srcPaths) {
			var src = resolvePath(project, sourcePath, "code");
			if (!FileSystem.exists(src))
				continue;

			for (f in FileSystem.readDirectory(src)) {
				var full = Path.join([src, f]);
				if (exclude.contains(f) || (Path.extension(f) != "hx" && !FileSystem.isDirectory(full)))
					continue;

				var mod = Path.withoutExtension(f);
				if (modules.exists(mod))
					continue;
				modules.set(mod, true);
				Compiler.addGlobalMetadata(mod, "@:build(HaxeBoxMacro.build())");
			}
		}

		loadDlls();

		#if WHITELIST
		Context.onAfterGenerate(() -> {
			try {
				var out = resolvePath(project, outPath, "code/__haxe__");
				patchWhitelist(Path.join([haxebox, "haxe", "src"]), Path.join([out, "src"]));
			} catch (e) {
				Context.warning("Failed to patch whitelist: " + e.message, Context.currentPos());
			}
		});
		#end
		#end
	}

	static function loadDlls() {
		var sboxManaged = findSboxManagedDir();
		if (sboxManaged == null)
			Context.error("Can't locate sbox managed directory. Set SBOX_MANAGED_DIR or STEAM_DIR.", Context.currentPos());

		var dotnetRuntime = findDotnetRuntimeDir();
		if (dotnetRuntime == null)
			Context.error("Can't locate Microsoft.NETCore.App runtime directory. Set DOTNET_RUNTIME_DIR or DOTNET_ROOT.", Context.currentPos());

		var libs:Array<String> = [];
		for (file in FileSystem.readDirectory(sboxManaged))
			if (StringTools.startsWith(file, "Sandbox.") && StringTools.endsWith(file, ".dll"))
				libs.push(join(sboxManaged, [file]));

		var extraSbox = ["SkiaSharp.dll", "Zio.dll"];
		for (file in extraSbox) {
			var full = join(sboxManaged, [file]);
			if (isFile(full))
				libs.push(full);
		}

		var dotnetLibs = [
			"System.Text.Json.dll",
			"System.Memory.dll",
			"System.Buffers.dll",
			"System.Collections.Immutable.dll",
			"System.IO.Compression.dll",
			"System.Runtime.CompilerServices.Unsafe.dll",
			"System.Text.Encodings.Web.dll"
		];
		for (file in dotnetLibs) {
			var full = join(dotnetRuntime, [file]);
			if (isFile(full))
				libs.push(full);
		}

		var missing:Array<String> = [];
		for (file in dotnetLibs) {
			var full = join(dotnetRuntime, [file]);
			if (!isFile(full))
				missing.push(full);
		}
		if (missing.length > 0) {
			Context.error("Missing required .NET runtime libraries:\n- " + missing.join("\n- "), Context.currentPos());
		}

		for (lib in unique(libs))
			Compiler.addNativeLib(lib);
	}

	static function normalizePath(path:String):String {
		return StringTools.replace(path, "\\", "/");
	}

	static function join(base:String, parts:Array<String>):String {
		var all = [normalizePath(base)];
		for (part in parts)
			all.push(part);
		return normalizePath(Path.join(all));
	}

	static function isDirectory(path:String):Bool {
		return FileSystem.exists(path) && FileSystem.isDirectory(path);
	}

	static function isFile(path:String):Bool {
		return FileSystem.exists(path) && !FileSystem.isDirectory(path);
	}

	static function unique(values:Array<String>):Array<String> {
		var seen = new Map<String, Bool>();
		var out:Array<String> = [];
		for (value in values) {
			if (!seen.exists(value)) {
				seen.set(value, true);
				out.push(value);
			}
		}
		return out;
	}

	static function lastSegment(path:String):String {
		var normalized = normalizePath(path);
		var split = normalized.split("/");
		return split[split.length - 1];
	}

	static function compareVersionStrings(a:String, b:String):Int {
		var aParts = a.split(".");
		var bParts = b.split(".");
		var len = aParts.length > bParts.length ? aParts.length : bParts.length;
		for (i in 0...len) {
			var aInt = i < aParts.length ? Std.parseInt(aParts[i]) : 0;
			var bInt = i < bParts.length ? Std.parseInt(bParts[i]) : 0;
			if (aInt == null)
				aInt = 0;
			if (bInt == null)
				bInt = 0;
			if (aInt > bInt)
				return -1;
			if (aInt < bInt)
				return 1;
		}
		return 0;
	}

	static function steamRoots():Array<String> {
		var roots:Array<String> = [];
		var envSteam = Sys.getEnv("STEAM_DIR");
		if (envSteam != null && envSteam != "")
			roots.push(normalizePath(envSteam));
		roots.push(DEFAULT_STEAM_DIR);

		for (root in roots.copy()) {
			var libraryFolders = join(root, ["steamapps", "libraryfolders.vdf"]);
			if (!isFile(libraryFolders))
				continue;
			var content = File.getContent(libraryFolders);
			var re = ~/"path"\s*"([^"]+)"/;
			for (line in content.split("\n")) {
				if (re.match(line)) {
					var path = re.matched(1);
					path = StringTools.replace(path, "\\\\", "\\");
					roots.push(normalizePath(path));
				}
			}
		}

		var existing:Array<String> = [];
		for (root in unique(roots)) {
			if (isDirectory(root))
				existing.push(root);
		}
		return existing;
	}

	static function findSboxManagedDir():Null<String> {
		var envManaged = Sys.getEnv("SBOX_MANAGED_DIR");
		if (envManaged != null && envManaged != "") {
			var normalized = normalizePath(envManaged);
			if (isDirectory(normalized))
				return normalized;
		}

		for (root in steamRoots()) {
			var managed = join(root, ["steamapps", "common", "sbox", "bin", "managed"]);
			if (isDirectory(managed))
				return managed;
		}
		return null;
	}

	static function findDotnetRuntimeDir():Null<String> {
		var envRuntime = Sys.getEnv("DOTNET_RUNTIME_DIR");
		if (envRuntime != null && envRuntime != "") {
			var normalized = normalizePath(envRuntime);
			if (isDirectory(normalized))
				return normalized;
		}

		var dotnetRoots:Array<String> = [];
		var envDotnetRoot = Sys.getEnv("DOTNET_ROOT");
		if (envDotnetRoot != null && envDotnetRoot != "")
			dotnetRoots.push(normalizePath(envDotnetRoot));
		dotnetRoots.push(DEFAULT_DOTNET_DIR);

		var versionDirs:Array<String> = [];
		for (root in unique(dotnetRoots)) {
			var runtimeRoot = join(root, ["shared", "Microsoft.NETCore.App"]);
			if (!isDirectory(runtimeRoot))
				continue;
			for (entry in FileSystem.readDirectory(runtimeRoot)) {
				var full = join(runtimeRoot, [entry]);
				if (isDirectory(full))
					versionDirs.push(full);
			}
		}

		if (versionDirs.length == 0)
			return null;

		versionDirs.sort((a, b) -> compareVersionStrings(lastSegment(a), lastSegment(b)));
		return versionDirs[0];
	}

	static function resolvePath(project:String, path:Null<String>, fallback:String):String {
		var v = (path == null ? fallback : path.trim());
		if (v.length == 0)
			v = fallback;
		v = v.replace("\\", "/");
		return Path.isAbsolute(v) ? v : Path.join([project, v]);
	}

	#if WHITELIST
	static function patchWhitelist(src:String, tgt:String) {
		if (!FileSystem.exists(src) || !FileSystem.exists(tgt))
			return;

		for (name in FileSystem.readDirectory(src)) {
			var srcPath = Path.join([src, name]);
			var tgtPath = Path.join([tgt, name]);
			if (!FileSystem.exists(tgtPath))
				continue;
			if (FileSystem.isDirectory(srcPath)) {
				patchWhitelist(srcPath, tgtPath);
				continue;
			}
			File.copy(srcPath, tgtPath);
		}
	}
	#end
}
