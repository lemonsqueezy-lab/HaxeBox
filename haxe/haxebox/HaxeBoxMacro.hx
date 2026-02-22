package;

import haxe.macro.Type.ClassType;

using StringTools;

#if macro
import haxe.crypto.Md5;
import haxe.io.Path;
import haxe.macro.Compiler;
import haxe.macro.Context;
import haxe.macro.Expr;
import sys.FileSystem;
import sys.io.File;

using haxe.macro.ExprTools;
using haxe.macro.TypeTools;
#end

enum PanelType {
	None;
	Panel;
	PanelComponent;
}

#if macro
private typedef SeqState = {
	var value:Int;
}
#end

class HaxeBoxMacro {
	#if macro
	static final TAGS:Map<String, String> = [
		"a" => "sandbox.ui.Label",
		"button" => "sandbox.ui.Button",
		"form" => "sandbox.ui.Form",
		"img" => "sandbox.ui.Image",
		"input" => "sandbox.ui.TextEntry",
		"label" => "sandbox.ui.Label",
		"option" => "sandbox.ui.Option",
		"select" => "sandbox.ui.DropDown",
		"textarea" => "sandbox.ui.TextEntry",
	];

	static var ATTR:Map<String, String> = [
		"ActionGraphExposeWhenCached" => "Sandbox.ActionGraphExposeWhenCachedAttribute",
		"ActionGraphIgnore" => "Sandbox.ActionGraphIgnoreAttribute",
		"ActionGraphInclude" => "Sandbox.ActionGraphIncludeAttribute",
		"ActionGraphNode" => "Sandbox.ActionGraphNodeAttribute",
		"ActionGraphOperator" => "Sandbox.ActionGraphOperatorAttribute",
		"ActionGraphProperty" => "Sandbox.ActionGraphPropertyAttribute",
		"ActionGraphTarget" => "Sandbox.ActionGraphTargetAttribute",
		"ActionNode" => "Sandbox.ActionNodeAttribute",
		"Advanced" => "Sandbox.AdvancedAttribute",
		"Alias" => "AliasAttribute",
		"Asset.ThumbnailRenderer" => "Editor.Asset.ThumbnailRendererAttribute",
		"AssetPreview" => "Editor.AssetPreviewAttribute",
		"AssetType" => "Sandbox.AssetTypeAttribute",
		"AttemptAfter" => "Sandbox.Upgraders.AttemptAfterAttribute",
		"AttemptBefore" => "Sandbox.Upgraders.AttemptBeforeAttribute",
		"AudioDistanceFloat" => "Sandbox.Audio.AudioDistanceFloatAttribute",
		"Authority" => "Sandbox.AuthorityAttribute",
		"AutoGenerate" => "Sandbox.AutoGenerateAttribute",
		"Axis" => "Sandbox.ModelEditor.AxisAttribute",
		"BaseModelDoc" => "Sandbox.ModelEditor.Internal.BaseModelDocAttribute",
		"BaseTransform" => "Sandbox.ModelEditor.Internal.BaseTransformAttribute",
		"BitFlags" => "Sandbox.BitFlagsAttribute",
		"Box" => "Sandbox.ModelEditor.BoxAttribute",
		"Broadcast" => "Sandbox.BroadcastAttribute",
		"Button" => "Sandbox.ButtonAttribute",
		"CanDrop" => "Editor.MapEditor.CanDropAttribute",
		"CanEdit" => "Editor.CanEditAttribute",
		"Capsule" => "Sandbox.ModelEditor.CapsuleAttribute",
		"CascadingParameter" => "Sandbox.UI.CascadingParameterAttribute",
		"Category" => "CategoryAttribute",
		"Change" => "Sandbox.ChangeAttribute",
		"ClassFileLocation" => "Sandbox.Internal.ClassFileLocationAttribute",
		"ClassName" => "ClassNameAttribute",
		"ClientEditable" => "Sandbox.ClientEditableAttribute",
		"Cloud.Asset" => "Sandbox.Cloud.AssetAttribute",
		"CodeGenerator" => "Sandbox.CodeGeneratorAttribute",
		"ColorUsage" => "Sandbox.ColorUsageAttribute",
		"ConCmd" => "Sandbox.ConCmdAttribute",
		"ConVar" => "Sandbox.ConVarAttribute",
		"CustomEditor" => "Sandbox.CustomEditorAttribute",
		"CustomEmbeddedEditor" => "Sandbox.CustomEmbeddedEditorAttribute",
		"Cylinder" => "Sandbox.ModelEditor.CylinderAttribute",
		"DefaultValue" => "DefaultValueAttribute",
		"Description" => "DescriptionAttribute",
		"DisableAutoCreation" => "Sandbox.Upgraders.DisableAutoCreationAttribute",
		"Dock" => "Editor.DockAttribute",
		"Editor" => "EditorAttribute",
		"EditorApp" => "Editor.EditorAppAttribute",
		"EditorEvent.Frame" => "Editor.EditorEvent.FrameAttribute",
		"EditorEvent.Hotload" => "Editor.EditorEvent.HotloadAttribute",
		"EditorForAssetType" => "Editor.EditorForAssetTypeAttribute",
		"EditorHandle" => "Sandbox.EditorHandleAttribute",
		"EditorModel" => "EditorModelAttribute",
		"EditorWidget" => "Sandbox.ModelEditor.EditorWidgetAttribute",
		"EnableColorAlpha" => "Editor.EnableColorAlphaAttribute",
		"EnumButtonGroup" => "Sandbox.EnumButtonGroupAttribute",
		"Event" => "Sandbox.EventAttribute",
		"ExpressionNode" => "Sandbox.ExpressionNodeAttribute",
		"FGDType" => "Sandbox.FGDTypeAttribute",
		"Feature" => "Sandbox.FeatureAttribute",
		"FeatureEnabled" => "Sandbox.FeatureEnabledAttribute",
		"FilePath" => "Sandbox.FilePathAttribute",
		"FontName" => "Sandbox.FontNameAttribute",
		"GameData" => "Sandbox.ModelEditor.GameDataAttribute",
		"GameResource" => "Sandbox.GameResourceAttribute",
		"Group" => "GroupAttribute",
		"HandPose" => "Sandbox.ModelEditor.HandPoseAttribute",
		"HasConversionFrom" => "Sandbox.ActionGraphs.HasConversionFromAttribute",
		"HasImplementation" => "Sandbox.HasImplementationAttribute",
		"Header" => "Sandbox.HeaderAttribute",
		"HelpUrl" => "Sandbox.HelpUrlAttribute",
		"Hide" => "Sandbox.HideAttribute",
		"HideIf" => "HideIfAttribute",
		"HideInEditor" => "HideInEditorAttribute",
		"HideProperty" => "Editor.HidePropertyAttribute",
		"HingeJoint" => "Sandbox.ModelEditor.HingeJointAttribute",
		"HostSync" => "Sandbox.HostSyncAttribute",
		"Icon" => "IconAttribute",
		"IconName" => "Sandbox.IconNameAttribute",
		"ImageAssetPath" => "Sandbox.ImageAssetPathAttribute",
		"Impure" => "Sandbox.ImpureAttribute",
		"InfoBox" => "Sandbox.InfoBoxAttribute",
		"InitializedBy" => "Sandbox.Upgraders.InitializedByAttribute",
		"InlineEditor" => "Sandbox.InlineEditorAttribute",
		"Input" => "Sandbox.InputAttribute",
		"InputAction" => "Sandbox.InputActionAttribute",
		"Inspector" => "Editor.InspectorAttribute",
		"JsonUpgrader" => "Sandbox.JsonUpgraderAttribute",
		"KeyProperty" => "Sandbox.KeyPropertyAttribute",
		"Library" => "Sandbox.LibraryAttribute",
		"Line" => "Sandbox.ModelEditor.LineAttribute",
		"MakeDirty" => "Sandbox.MakeDirtyAttribute",
		"MapAssetPath" => "Sandbox.MapAssetPathAttribute",
		"MapEditor.MapViewContextMenu" => "Editor.EditorEvent.MapEditor.MapViewContextMenu",
		"MapEditor.SelectionChanged" => "Editor.EditorEvent.MapEditor.SelectionChanged",
		"Menu" => "Editor.MenuAttribute",
		"MenuConCmd" => "Sandbox.MenuConCmdAttribute",
		"MenuConVar" => "Sandbox.MenuConVarAttribute",
		"MethodArguments" => "Sandbox.MethodArgumentsAttribute",
		"MethodBodyChange" => "Sandbox.MethodBodyChangeAttribute",
		"MinMax" => "MinMaxAttribute",
		"Model.BodyGroupMask" => "Sandbox.Model.BodyGroupMaskAttribute",
		"Model.MaterialGroup" => "Sandbox.Model.MaterialGroupAttribute",
		"Model.MaterialOverride" => "Sandbox.Model.MaterialOverrideAttribute",
		"Normal" => "Sandbox.NormalAttribute",
		"Order" => "OrderAttribute",
		"PanelEvent" => "Sandbox.UI.PanelEventAttribute",
		"Placeholder" => "PlaceholderAttribute",
		"Property" => "Sandbox.PropertyAttribute",
		"PropertyAccessorBodyChange" => "Sandbox.PropertyAccessorBodyChangeAttribute",
		"Pure" => "Sandbox.PureAttribute",
		"Range" => "Sandbox.RangeAttribute",
		"ReadOnly" => "Sandbox.ReadOnlyAttribute",
		"RequireComponent" => "Sandbox.RequireComponentAttribute",
		"ResourceCompiler.ResourceIdentity" => "Sandbox.Resources.ResourceCompiler.ResourceIdentityAttribute",
		"ResourceType" => "Sandbox.ResourceTypeAttribute",
		"Route" => "Microsoft.AspNetCore.Components.RouteAttribute",
		"Rpc.Broadcast" => "Sandbox.Rpc.BroadcastAttribute",
		"Rpc.Host" => "Sandbox.Rpc.HostAttribute",
		"Rpc.Owner" => "Sandbox.Rpc.OwnerAttribute",
		"ScaleBoneRelative" => "Sandbox.ModelEditor.ScaleBoneRelativeAttribute",
		"ScaleWorld" => "Sandbox.ModelEditor.ScaleWorldAttribute",
		"SelectionBase" => "Sandbox.SelectionBaseAttribute",
		"Shortcut" => "Editor.ShortcutAttribute",
		"ShowIf" => "ShowIfAttribute",
		"SingleAction" => "Sandbox.SingleActionAttribute",
		"SkipHotload" => "Sandbox.SkipHotloadAttribute",
		"SourceLocation" => "Sandbox.Internal.SourceLocationAttribute",
		"Space" => "Sandbox.SpaceAttribute",
		"Spawnable" => "SpawnableAttribute",
		"Sphere" => "Sandbox.ModelEditor.SphereAttribute",
		"StackLineHandler" => "Editor.StackLineHandlerAttribute",
		"Step" => "Sandbox.StepAttribute",
		"Streamer.ChatMessage" => "Sandbox.Event.Streamer.ChatMessageAttribute",
		"Streamer.JoinChat" => "Sandbox.Event.Streamer.JoinChatAttribute",
		"Streamer.LeaveChat" => "Sandbox.Event.Streamer.LeaveChatAttribute",
		"StringLiteralOnly" => "Sandbox.StringLiteralOnlyAttribute",
		"StringToken.Convert" => "Sandbox.StringToken.ConvertAttribute",
		"StyleSheet" => "Sandbox.UI.StyleSheetAttribute",
		"SupportsILHotload" => "Sandbox.SupportsILHotloadAttribute",
		"SuppressNullKeyWarning" => "Sandbox.SuppressNullKeyWarningAttribute",
		"Sync" => "Sandbox.SyncAttribute",
		"Tag" => "TagAttribute",
		"TargetType" => "Sandbox.TargetTypeAttribute",
		"TextArea" => "Sandbox.TextAreaAttribute",
		"TextureImagePath" => "Sandbox.TextureImagePathAttribute",
		"TimeRange" => "TimeRangeAttribute",
		"Tint" => "Sandbox.TintAttribute",
		"Title" => "TitleAttribute",
		"ToggleGroup" => "ToggleGroupAttribute",
		"UpgraderGroup" => "Sandbox.Upgraders.UpgraderGroupAttribute",
		"Validate" => "ValidateAttribute",
		"ValueRange" => "ValueRangeAttribute",
		"VertexLayout.BlendIndices" => "Sandbox.VertexLayout.BlendIndices",
		"VertexLayout.BlendWeight" => "Sandbox.VertexLayout.BlendWeight",
		"VertexLayout.Color" => "Sandbox.VertexLayout.Color",
		"VertexLayout.Normal" => "Sandbox.VertexLayout.Normal",
		"VertexLayout.Position" => "Sandbox.VertexLayout.Position",
		"VertexLayout.Tangent" => "Sandbox.VertexLayout.Tangent",
		"VertexLayout.TexCoord" => "Sandbox.VertexLayout.TexCoord",
		"WideMode" => "Sandbox.WideModeAttribute",
	];

	static inline function nextSeqInt(seq:SeqState):Int
		return seq.value++;

	static inline function nextSeqExpr(seq:SeqState):Expr
		return macro $v{seq.value++};

	public static function init() {
		Compiler.registerCustomMetadata({metadata: ":ui.attr", doc: "Make field available as a node attribute"});
		Compiler.registerCustomMetadata({metadata: ":ui.markup", doc: "Build UI from markup expression"});
		Compiler.registerCustomMetadata({metadata: ":sync", doc: "Track expressions for a @:ui.markup function to update UI"});
		Compiler.registerCustomMetadata({metadata: ":test", doc: "Add test to UI node"});
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

	public static function build():Array<Field> {
		var fields = Context.getBuildFields() ?? [];

		var cls = Context.getLocalClass()?.get();
		if (cls == null)
			return fields;

		var clsModule = getNativeClassPath(cls);

		var panelType = getPanelType(cls);

		var tracks:Array<Expr> = [];
		var markups:Array<Expr> = [];
		var stylesheets:Array<Expr> = [];

		var builder:Function = null;
		var hashBuilder:Function = null;
		var checksumBuilder:Function = null;
		var constructor:Function = null;
		var builderRef:Expr = null;

		if (cls.meta.has(":bridgeProperties"))
			cls.meta.remove(":bridgeProperties");
		if (cls.meta.has(":native"))
			cls.meta.remove(":native");
		cls.meta.add(":native", [macro $v{clsModule}], cls.pos);
		cls.meta.add(":nativeGen", [], cls.pos);
		for (m in cls.meta.get())
			patchMeta(m);

		for (i in 0...fields.length) {
			var field = fields[i];

			var isAttr = false;
			var isMarkup = false;

			for (m in field.meta ?? [])
				switch m.name {
					case ":ui.attr":
						isAttr = true;
					case ":ui.markup":
						isMarkup = true;
						for (p in m.params ?? [])
							stylesheets.push(p);
					default:
						patchMeta(m);
				}

			switch field.kind {
				case FFun(f):
					if (isAttr)
						Context.warning("Functions can't be UI attributes", field.pos);
					if (isMarkup && f.expr != null)
						markups.push(f.expr);
					switch field.name {
						case "BuildRenderTree":
							builder = f;
							if (f.args.length > 0) builderRef = macro $i{f.args[0].name};
						case "BuildHash":
							hashBuilder = f;
						case "GetRenderTreeChecksum":
							checksumBuilder = f;
						case "new" if (panelType == Panel):
							constructor = f;
						case "OnTreeFirstBuilt" if (panelType == PanelComponent):
							constructor = f;
						default:
					}
				default:
					if (isMarkup)
						Context.warning("Variables can't be UI markups", field.pos);
					switch field.kind {
						case FProp(get, set, t, e):
							isAttr = isAttr && !buildProp(field, get, set, t, e, fields);
						default:
					}
					if (isAttr) {
						var m = {
							name: ":property",
							pos: field.pos
						}
						if (field.meta == null)
							field.meta = [m];
						else
							field.meta.push(m);
					}
			}
		}

		if (markups.length > 0) {
			if (panelType == None)
				Context.warning("ui.* metadata is ignored because class is not Panel/PanelComponent", cls.pos);
			else {
				var markupExpr = buildMarkups(markups, builderRef, fields, tracks);
				if (builder != null)
					builder.expr = builder.expr == null ? markupExpr : macro {
						${builder.expr};
						$markupExpr;
					};
				buildTracks(tracks, hashBuilder, fields);
				buildChecksum(markups, checksumBuilder, fields, panelType, clsModule);
				buildStyleSheets(stylesheets, constructor, fields, panelType);
			}
		}

		return fields;
	}

	static function buildChecksum(markups:Array<Expr>, checksumBuilder:Function, fields:Array<Field>, panelType:PanelType, clsModule:String) {
		if (panelType == None || checksumBuilder != null || markups.length == 0)
			return;

		var seed = clsModule;
		for (m in markups)
			seed += ":" + haxe.macro.ExprTools.toString(m);

		var pos = Context.currentPos();
		fields.push({
			meta: [{name: ":protected", pos: pos}],
			name: "GetRenderTreeChecksum",
			access: [AOverride],
			kind: FFun({
				args: [],
				ret: macro :String,
				expr: macro return $v{clsModule + ".markup." + Md5.encode(seed)}
			}),
			pos: pos
		});
	}

	static inline function getNativeClassPath(cls:ClassType):String {
		if (cls.pack == null || cls.pack.length == 0)
			return cls.name;
		return cls.pack.join(".") + "." + cls.name;
	}

	static function getPanelType(cls:ClassType):PanelType {
		return switch cls.module {
			case "sandbox.PanelComponent": PanelComponent;
			case "sandbox.ui.Panel": Panel;
			default:
				var sup = cls.superClass?.t.get();
				sup == null ? None : getPanelType(sup);
		};
	}

	static function patchMeta(m:MetadataEntry) {
		if (ATTR.exists(m.name)) {
			m.params = [
				macro $i{ATTR[m.name]}(${
					for (p in m.params ?? [])
						p
				})
			];
			m.name = ":meta";
		}
	}

	static function buildStyleSheets(stylesheets:Array<Expr>, existing:Function, fields:Array<Field>, panelType:PanelType) {
		if (stylesheets.length == 0)
			return;

		var body = macro $b{
			[
				for (s in stylesheets)
					macro try {
						${
							switch panelType {
								case Panel:
									macro StyleSheet.Load($s, false, false);
								case PanelComponent:
									macro Panel.StyleSheet.Load($s, false, false);
								default:
									macro null;
							}
						};
					} catch (e) {
						Log.Warning("Failed to load stylesheet: " + e.message);
					}
			]
		};

		if (existing != null) {
			existing.expr = existing.expr == null ? body : macro {
				${existing.expr};
				$body;
			};
			return;
		}

		var pos = Context.currentPos();
		switch panelType {
			case PanelComponent:
				fields.push({
					meta: [{name: ":protected", pos: pos}],
					name: "OnTreeFirstBuilt",
					access: [AOverride],
					kind: FFun({args: [], expr: body}),
					pos: pos
				});
			case Panel:
				fields.push({
					name: "new",
					access: [APublic],
					kind: FFun({
						args: [],
						expr: macro {
							super();
							$body;
						}
					}),
					pos: pos
				});
			case None:
		}
	}

	static function buildProp(field:Field, get:String, set:String, t:ComplexType, e:Expr, fields:Array<Field>):Bool {
		if (get != "get" && set != "set")
			return false;

		var pos = Context.currentPos();
		var name = field.name;
		var backing = "var_" + name;
		field.kind = FProp("get", "set", t, null);

		fields.push({
			meta: [{name: ":protected", pos: field.pos}],
			name: backing,
			kind: FVar(t, e),
			pos: pos
		});

		if (get != "get") {
			fields.push({
				meta: [{name: ":protected", pos: field.pos}],
				name: "get_" + name,
				kind: FFun({args: [], expr: macro return $i{backing}}),
				pos: pos
			});
		}

		if (set != "set") {
			fields.push({
				meta: [{name: ":protected", pos: field.pos}],
				name: "set_" + name,
				kind: FFun({
					args: [{name: "value"}],
					expr: macro return $i{backing} = value
				}),
				pos: pos
			});
		}

		var meta = field.meta;
		if (meta == null) {
			meta = [];
			field.meta = meta;
		}
		var hasProperty = false;
		for (m in meta)
			if (m.name == ":property") {
				hasProperty = true;
				break;
			}
		if (!hasProperty)
			meta.push({name: ":property", pos: field.pos});

		return true;
	}

	static function buildTracks(tracks:Array<Expr>, hashBuilder:Function, fields:Array<Field>) {
		if (tracks.length == 0)
			return;

		var exprs:Array<Expr> = [macro var __h = new system.HashCode()];
		if (hashBuilder?.expr != null)
			exprs.push(macro __h.Add(${hashBuilder.expr}));
		for (track in tracks)
			exprs.push(macro __h.Add($track));
		exprs.push(macro return __h.ToHashCode());

		var body = macro $b{exprs};
		if (hashBuilder != null) {
			hashBuilder.expr = body;
			return;
		}

		var pos = Context.currentPos();
		fields.push({
			meta: [{name: ":protected", pos: pos}],
			name: "BuildHash",
			access: [AOverride],
			kind: FFun({args: [], expr: body}),
			pos: pos
		});
	}

	static function buildMarkups(markups:Array<Expr>, builderRef:Expr, fields:Array<Field>, tracks:Array<Expr>):Expr {
		if (markups.length == 0)
			return macro {};

		var pushBuilder = builderRef == null;
		if (builderRef == null)
			builderRef = macro builder;

		var seq:SeqState = {value: 0};
		var exprs:Array<Expr> = [macro var __b = cast($builderRef, sandbox.ui.PanelRenderTreeBuilder)];
		for (m in markups)
			exprs.push(buildMarkup(m, fields, seq, tracks));

		var body = macro $b{exprs};
		if (pushBuilder) {
			var pos = Context.currentPos();
			fields.push({
				meta: [{name: ":protected", pos: pos}],
				name: "BuildRenderTree",
				access: [AOverride],
				kind: FFun({
					args: [
						{name: "builder", type: macro :microsoft.aspnetcore.components.rendering.RenderTreeBuilder}
					],
					expr: body
				}),
				pos: pos
			});
		}
		return body;
	}

	static function buildMarkup(expr:Null<Expr>, fields:Array<Field>, seq:SeqState, tracks:Array<Expr>):Null<Expr> {
		if (expr == null || expr.expr == null)
			return expr;

		return {
			expr: switch expr.expr {
				case EBlock(exprs):
					EBlock(exprs.map(e -> buildMarkup(e, fields, seq, tracks)));
				case EIf(econd, eif, eelse):
					EIf(econd, buildMarkup(eif, fields, seq, tracks), buildMarkup(eelse, fields, seq, tracks));
				case EFor(it, e):
					EFor(it, buildMarkup(e, fields, seq, tracks));
				case EWhile(econd, e, normalWhile):
					EWhile(econd, buildMarkup(e, fields, seq, tracks), normalWhile);
				case ESwitch(e, cases, edef):
					ESwitch(e, cases.map(c -> {
						values: c.values,
						guard: c.guard,
						expr: buildMarkup(c.expr, fields, seq, tracks)
					}), buildMarkup(edef, fields, seq, tracks));
				case EConst(_), EField(_, _), EArray(_, _):
					(macro __b.AddContent(${nextSeqExpr(seq)}, Std.string($expr))).expr;
				case EMeta(m, e) if (m.name == ":sync"):
					tracks.push(e);
					buildMarkup(e, fields, seq, tracks).expr;
				case EMeta(m, e) if (m.name == ":text" || m.name == ":content"):
					(macro __b.AddContent(${nextSeqExpr(seq)}, Std.string($e))).expr;
				case EMeta(m, e) if (!m.name.startsWith(":")):
					buildNode(m, e, fields, seq, tracks);
				default:
					expr.expr;
			},
			pos: expr.pos
		};
	}

	static function resolveTag(name:String):String {
		if (TAGS.exists(name))
			return TAGS[name];
		if (name.length > 0) {
			var c = name.charCodeAt(0);
			if (c >= 97 && c <= 122)
				return "sandbox.ui.Panel";
		}
		return name;
	}

	static function buildNode(meta:MetadataEntry, expr:Expr, fields:Array<Field>, seq:SeqState, tracks:Array<Expr>) {
		if (meta.name == "style")
			return (macro __b.AddStyleDefinitions(${nextSeqExpr(seq)}, $expr)).expr;

		var className = resolveTag(meta.name);
		var native = try {
			getNative(className);
		} catch (e) {
			Context.reportError(e.message, meta.pos);
			return expr.expr;
		}

		var elExprs:Array<Expr> = [];
		var openSeq = nextSeqInt(seq);
		elExprs.push(macro untyped __cs__($v{'__b.OpenElement<global::$native>($openSeq)'}));
		for (p in meta.params ?? [])
			buildAttr(elExprs, p, className, fields, seq);
		var child = buildMarkup(expr, fields, seq, tracks);
		if (child != null)
			elExprs.push(child);
		elExprs.push(macro __b.CloseElement());
		return EBlock(elExprs);
	}

	static function getNative(name:String):String {
		var cls = Context.getType(name).getClass();
		if (cls == null)
			throw '$name is not a class';
		for (m in cls.meta.extract(":native"))
			for (p in m.params)
				switch p.expr {
					case EConst(CString(s)):
						return s;
					default:
				}
		throw '$name does not have native path';
	}

	static function buildAttr(elExprs:Array<Expr>, p:Expr, className:String, fields:Array<Field>, seq:SeqState) {
		function addRef(e:Expr) {
			switch e.expr {
				case EConst(CIdent(s)):
					fields.push({
						name: s,
						kind: FVar(try {
							Context.getType(className).toComplexType();
						} catch (er) {
							Context.reportError(er.message, e.pos);
							return;
						}, null),
						pos: Context.currentPos()
					});
					var refSeq = nextSeqInt(seq);
					elExprs.push(macro untyped __cs__($v{'__b.AddReferenceCapture($refSeq, {0}, p => {0} = p)'}, $i{s}));
				default:
					throw "Identifier expected";
			}
		}

		switch p.expr {
			case EUnop(op, _, e):
				switch op {
					case OpNegBits:
						try addRef(e) catch (err) Context.reportError(err.message, e.pos);
					case OpNeg:
						elExprs.push(macro __b.AddAttributeString(${nextSeqExpr(seq)}, "class", $e));
					default:
						Context.reportError("Unknown shortcut", p.pos);
				}
			case EBinop(OpAssign, e1, e2):
				var attr = switch e1.expr {
					case EConst(CIdent(s)), EConst(CString(s)): s;
					default:
						Context.reportError("Dynamic attributes are not supported", e1.pos);
						return;
				};

				if (attr.startsWith("on")) {
					elExprs.push(macro final __a:Void->Void = ${
						switch e2.expr {
							case EFunction(_): e2;
							default: macro() -> $e2();
						}
					});
					var actionSeq = nextSeqInt(seq);
					elExprs.push(macro untyped __cs__($v{'__b.AddAttributeAction($actionSeq, "$attr", () => {0}.__hx_invoke0_o())'}, __a));
				} else if (attr == "@ref") {
					try
						addRef(e2)
					catch (err)
						Context.reportError(err.message, e2.pos);
				} else {
					elExprs.push(macro __b.AddAttributeString(${nextSeqExpr(seq)}, $v{attr}, cast $e2));
				}
			default:
				Context.reportError("Invalid attribute expression", p.pos);
		}
	}
	#end
}
