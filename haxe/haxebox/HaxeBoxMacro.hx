package;

import haxe.macro.Type.ClassType;

using StringTools;

#if macro
import sys.FileSystem;
import sys.io.File;
import haxe.io.Path;
import haxe.macro.Expr;
import haxe.macro.Context;
import haxe.macro.Compiler;
import haxe.macro.MacroStringTools;

using haxe.macro.ExprTools;
using haxe.macro.TypeTools;
#end

class HaxeBoxMacro {
	#if macro
	static final seq = macro __s++;

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
	static var TAGS = [
		"div" => "sandbox.ui.Panel",
		"span" => "sandbox.ui.Panel",
		"p" => "sandbox.ui.Panel",
		"h1" => "sandbox.ui.Panel",
		"h2" => "sandbox.ui.Panel",
		"h3" => "sandbox.ui.Panel",
		"h4" => "sandbox.ui.Panel",
		"h5" => "sandbox.ui.Panel",
		"h6" => "sandbox.ui.Panel",
		"ul" => "sandbox.ui.Panel",
		"ol" => "sandbox.ui.Panel",
		"li" => "sandbox.ui.Panel",
		"a" => "sandbox.ui.Label",
		"section" => "sandbox.ui.Panel",
		"article" => "sandbox.ui.Panel",
		"aside" => "sandbox.ui.Panel",
		"header" => "sandbox.ui.Panel",
		"footer" => "sandbox.ui.Panel",
		"nav" => "sandbox.ui.Panel",
		"main" => "sandbox.ui.Panel",
		"table" => "sandbox.ui.Panel",
		"thead" => "sandbox.ui.Panel",
		"tbody" => "sandbox.ui.Panel",
		"tfoot" => "sandbox.ui.Panel",
		"tr" => "sandbox.ui.Panel",
		"td" => "sandbox.ui.Panel",
		"th" => "sandbox.ui.Panel",
		"caption" => "sandbox.ui.Panel",
		"colgroup" => "sandbox.ui.Panel",
		"col" => "sandbox.ui.Panel",
		"form" => "sandbox.ui.Form",
		"label" => "sandbox.ui.Label",
		"input" => "sandbox.ui.TextEntry",
		"textarea" => "sandbox.ui.TextEntry",
		"select" => "sandbox.ui.DropDown",
		"option" => "sandbox.ui.Option",
		"button" => "sandbox.ui.Button",
		"img" => "sandbox.ui.Image",
		"svg" => "sandbox.ui.SvgPanel",
		"video" => "sandbox.ui.VideoPanel",
		"canvas" => "sandbox.ui.Panel",
		"pre" => "sandbox.ui.Panel",
		"code" => "sandbox.ui.Panel",
		"blockquote" => "sandbox.ui.Panel",
		"q" => "sandbox.ui.Panel",
		"small" => "sandbox.ui.Panel",
		"strong" => "sandbox.ui.Panel",
		"em" => "sandbox.ui.Panel",
		"b" => "sandbox.ui.Panel",
		"i" => "sandbox.ui.Panel",
		"u" => "sandbox.ui.Panel",
		"s" => "sandbox.ui.Panel",
		"mark" => "sandbox.ui.Panel",
		"sup" => "sandbox.ui.Panel",
		"sub" => "sandbox.ui.Panel",
		"hr" => "sandbox.ui.Panel",
		"br" => "sandbox.ui.Panel",
	];

	public static function init() {
		Compiler.registerCustomMetadata({metadata: "ui.track", doc: "Track field to update UI"});
		Compiler.registerCustomMetadata({metadata: "ui.markup", doc: "Build UI from markup expression"});
		Compiler.registerCustomMetadata({metadata: "ui.stylesheet", doc: "Specify location for the stylesheet"});

		var project = Context.definedValue("PROJECT_PATH");
		var haxebox = Context.definedValue("HAXEBOX_PATH");

		if (project == null || haxebox == null)
			Context.fatalError("HaxeBox and project paths are not defined", Context.currentPos());

		var src = Path.join([project, "code"]);
		if (!FileSystem.exists(src))
			return;

		for (f in FileSystem.readDirectory(src))
			Compiler.addGlobalMetadata(Path.withoutExtension(f), "@:build(HaxeBoxMacro.build())");

		#if WHITELIST
		Context.onAfterGenerate(() -> try {
			patchWhitelist(Path.join([haxebox, "haxe", "src"]), Path.join([project, "code", "__haxe__", "src"]));
		} catch (e)
			Context.warning("Failed to patch whitelist: " + e.message, Context.currentPos()));
		#end
	}

	#if WHITELIST
	static function patchWhitelist(src:String, tgt:String) {
		if (!FileSystem.exists(src) || !FileSystem.exists(tgt))
			return;

		for (path in FileSystem.readDirectory(src)) {
			var srcPath = Path.join([src, path]);
			var tgtPath = Path.join([tgt, path]);
			if (FileSystem.exists(tgtPath))
				if (FileSystem.isDirectory(srcPath))
					patchWhitelist(srcPath, tgtPath);
				else
					File.copy(srcPath, tgtPath);
		}
	}
	#end

	public static function build():Array<Field> {
		var classTypes:Map<String, ComplexType> = [];
		var fields = Context.getBuildFields() ?? [];

		var cls = Context.getLocalClass()?.get();
		if (cls == null)
			return fields;

		var clsModule = cls.module;
		var dot = clsModule.lastIndexOf(".");
		var shortName = dot == -1 ? clsModule : clsModule.substr(dot + 1);
		if (cls.name != shortName)
			clsModule += "." + cls.name;

		var isPanel = isDerivedFromPanel(cls);
		var tracks = [];
		var hashBuilder = null;
		var markups = [];
		var markupIds = [];
		var builder = null;
		var builderRef = null;
		var stylesheets = [];
		var builderCb = null;

		for (m in cls.meta.get())
			patchMeta(m);
		if (cls.meta.has(":bridgeProperties"))
			cls.meta.remove(":bridgeProperties");
		if (cls.meta.has(":native"))
			cls.meta.remove(":native");
		cls.meta.add(":native", [macro $v{clsModule}], cls.pos);
		cls.meta.add(":nativeGen", [], cls.pos);
		if (cls.meta.has("ui.stylesheet")) {
			stylesheets = cls.meta.extract("ui.stylesheet");
			if (!isPanel)
				for (m in stylesheets)
					Context.warning("This meta will be ignored as the class is not derived from sandbox.PanelComponent or sandbox.ui.Panel", m.pos);
		}

		for (i in 0...fields.length) {
			var field = fields[i];

			var meta = field.meta ?? [];
			var hasMarkup = false;
			var hasTrack = false;
			for (m in meta) {
				if (patchMeta(m))
					continue;
				else if (m.name == "ui.markup")
					if (isPanel)
						hasMarkup = true;
					else
						Context.warning("This meta will be ignored as the class is not derived from sandbox.PanelComponent or sandbox.ui.Panel", m.pos);
				else if (m.name == "ui.track")
					if (isPanel)
						hasTrack = true;
					else
						Context.warning("This meta will be ignored as the class is not derived from sandbox.PanelComponent or sandbox.ui.Panel", m.pos);
			}

			switch field.kind {
				case FFun(f):
					if (field.name == "BuildRenderTree") {
						builder = f;
						builderRef = macro $i{f.args[0].name};
					} else if (field.name == "BuildHash")
						hashBuilder = f;
					else if (field.name == "OnTreeFirstBuilt")
						builderCb = f;
					else if (hasMarkup) {
						markups.push(field);
						markupIds.push(i);
					}
				case FVar(t, e):
					if (hasTrack)
						tracks.push(field.name);
				case FProp(get, set, t, e):
					if (hasTrack)
						tracks.push(buildProp(field, get, set, t, e, fields));
			}
		}

		for (i in 0...markupIds.length) {
			var idx = markupIds[markupIds.length - i - 1];
			fields.splice(idx, 1);
		}

		if (isPanel) {
			buildStyleSheets(stylesheets, builderCb, fields);
			buildTracks(tracks, hashBuilder, fields);
			var m = buildMarkups(markups, builderRef, fields, classTypes);
			if (builder != null)
				builder.expr = macro {
					${builder.expr};
					$m;
				}
		}

		return fields;
	}

	static function isDerivedFromPanel(cls:ClassType) {
		var sup = cls.superClass?.t.get();
		if (sup == null)
			return cls.module == "sandbox.PanelComponent" || cls.module == "sandbox.ui.Panel";
		if (cls.module == "sandbox.PanelComponent" || cls.module == "sandbox.ui.Panel")
			return true;
		return isDerivedFromPanel(sup);
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
			return true;
		}
		return false;
	}

	static function buildStyleSheets(meta:Array<MetadataEntry>, builderCb:Function, fields:Array<Field>) {
		if (meta.length == 0)
			return;

		var expr = macro $b{
			[
				for (m in meta) {
					var params = m.params ?? [];
					if (params.length > 0) for (p in params)
						switch p.expr {
							case EConst(CString(s, kind)):
								macro try {
									Panel.StyleSheet.Load(${v(s, kind)}, true, false);
								} catch (e) {
									Log.Warning("Failed to load stylesheet: " + e.message);
								}
							default:
								Context.reportError("String literal expected", p.pos);
								continue;
						}
				}
			]
		}

		if (builderCb != null)
			builderCb.expr = macro {${builderCb.expr}; $expr;}
		else
			fields.push({
				meta: [
					{
						name: ":protected",
						pos: Context.currentPos()
					}
				],
				name: "OnTreeFirstBuilt",
				access: [AOverride],
				kind: FFun({
					args: [],
					expr: expr
				}),
				pos: Context.currentPos()
			});
	}

	static function buildProp(field:Field, get:String, set:String, t:ComplexType, e:Expr, fields:Array<Field>) {
		var realFieldName = field.name;
		if (get == "get" || set == "set") {
			var pos = Context.currentPos();
			field.kind = FProp("get", "set", t, null);

			realFieldName = 'var_$realFieldName';
			var realField = macro $i{realFieldName};
			fields.push(modifyAccess({
				name: realFieldName,
				kind: FVar(t, e),
				pos: pos
			}));
			if (get != "get")
				fields.push(modifyAccess({
					name: 'get_${field.name}',
					access: [APrivate],
					kind: FFun({
						args: [],
						expr: macro return $realField
					}),
					pos: pos
				}));
			if (set != "set")
				fields.push(modifyAccess({
					name: 'set_${field.name}',
					access: [APrivate],
					kind: FFun({
						args: [
							{
								name: "value"
							}
						],
						expr: macro return $realField = value
					}),
					pos: pos
				}));

			var meta = field.meta;
			if (meta == null) {
				meta = [];
				field.meta = meta;
			}
			var isProp = false;
			var i = 0;
			while (i < meta.length) {
				var m = meta[i];
				if (m.name == ":property") {
					isProp = true;
					i++;
				} else if (m.name == ":isVar") {
					Context.warning('This meta will be removed. Use $realFieldName to access physical field', m.pos);
					meta.splice(i, 1);
				} else
					i++;
			}
			if (!isProp)
				meta.push({
					name: ":property",
					pos: field.pos
				});
		}
		return realFieldName;
	}

	static function buildTracks(tracks:Array<String>, hashBuilder:Function, fields:Array<Field>) {
		if (tracks.length == 0)
			return;

		var pos = Context.currentPos();
		var exprs = [];
		exprs.push(macro var __h = new system.HashCode());
		if (hashBuilder?.expr != null)
			exprs.push(macro __h.Add(${hashBuilder.expr}));
		for (track in tracks)
			exprs.push(macro __h.Add($i{track}));
		exprs.push(macro return __h.ToHashCode());

		var expr = macro $b{exprs};
		if (hashBuilder == null)
			fields.push({
				meta: [
					{
						name: ":protected",
						pos: pos
					}
				],
				name: "BuildHash",
				access: [AOverride],
				kind: FFun({
					args: [],
					expr: expr
				}),
				pos: pos
			});
		else
			hashBuilder.expr = expr;
	}

	static function buildMarkups(markups:Array<Field>, builderRef:Expr, fields:Array<Field>, classTypes:Map<String, ComplexType>):Expr {
		if (markups.length == 0)
			return macro {};

		var pushBuilder = builderRef == null;
		if (pushBuilder)
			builderRef = macro builder;

		var exprs = [macro var __b = cast($builderRef, sandbox.ui.PanelRenderTreeBuilder)];
		for (field in markups) {
			switch field.kind {
				case FFun(f):
					if (f.expr != null) {
						exprs.push(macro var __s = 0);
						exprs.push(buildMarkup(f.expr, fields, classTypes));
					}
				default:
					Context.warning("Usage: @ui.markup function ...", field.pos);
			}
		}

		var expr = macro $b{exprs};
		if (pushBuilder) {
			var pos = Context.currentPos();
			fields.push({
				meta: [
					{
						name: ":protected",
						pos: pos
					}
				],
				name: "BuildRenderTree",
				access: [AOverride],
				kind: FFun({
					args: [
						{
							name: "builder",
							type: macro :microsoft.aspnetcore.components.rendering.RenderTreeBuilder
						}
					],
					expr: expr
				}),
				pos: pos
			});
		}
		return expr;
	}

	static function buildMarkup(expr:Null<Expr>, fields:Array<Field>, classTypes:Map<String, ComplexType>):Null<Expr> {
		return expr == null ? null : {
			expr: switch expr.expr {
				case EBlock(exprs):
					EBlock(exprs.map(e -> buildMarkup(e, fields, classTypes)));
				case EIf(econd, eif, eelse):
					EIf(econd, buildMarkup(eif, fields, classTypes), buildMarkup(eelse, fields, classTypes));
				case EFor(it, e):
					EFor(it, buildMarkup(e, fields, classTypes));
				case EWhile(econd, e, normalWhile):
					EWhile(econd, buildMarkup(e, fields, classTypes), normalWhile);
				case ESwitch(e, cases, edef):
					ESwitch(e, cases.map(c -> {
						values: c.values,
						guard: c.guard,
						expr: buildMarkup(c.expr, fields, classTypes)
					}), buildMarkup(edef, fields, classTypes));
				case EConst(_):
					(macro __b.AddContent($seq, $expr)).expr;
				case EMeta(m, e) if (m.name == ":text" || m.name == ":content"):
					(macro __b.AddContent($seq, $e)).expr;
				case EMeta(m, e) if (m.name.charAt(0) != ":"):
					buildNode(m, e, fields, classTypes);
				default: expr.expr;
			},
			pos: expr.pos
		}
	}

	static function buildNode(meta:MetadataEntry, expr:Expr, fields:Array<Field>, classTypes:Map<String, ComplexType>) {
		if (meta.name == "style")
			return (macro __b.AddStyleDefinitions($seq, $expr)).expr;

		var className = TAGS.exists(meta.name) ? TAGS.get(meta.name) : meta.name;

		var classType = classTypes.get(className);
		if (classType == null) {
			classType = try {
				Context.toComplexType(Context.getType(className));
			} catch (e) {
				Context.reportError(e.message, meta.pos);
				return expr.expr;
			}
			classTypes.set(className, classType);
		}

		var elExprs = new Array<Expr>();
		elExprs.push(macro __b.OpenElement($seq, $v{className}));
		for (p in meta.params ?? [])
			buildAttr(elExprs, p, classType, fields);
		elExprs.push(buildMarkup(expr, fields, classTypes));
		elExprs.push(macro __b.CloseElement());

		return EBlock(elExprs);
	}

	static function buildAttr(elExprs:Array<Expr>, p:Expr, classType:ComplexType, fields:Array<Field>) {
		function addRef(e:Expr) {
			switch e.expr {
				case EConst(CIdent(s)):
					fields.push({
						name: s,
						kind: FVar(classType, null),
						pos: Context.currentPos()
					});
					elExprs.push(macro untyped __cs__($v{'__b.AddReferenceCapture(__s++, {0}, p => {0} = p)'}, $i{s}));
				default:
					throw "Identifier expected";
			}
		}

		switch p.expr {
			case EUnop(op, postFix, e):
				switch op {
					case OpNegBits:
						try {
							addRef(e);
						} catch (err) {
							Context.reportError(err.message, e.pos);
							return;
						}
					case OpNeg:
						elExprs.push(macro __b.AddAttributeString($seq, "class", $e));
					default:
						Context.reportError("Unknown shortcut", p.pos);
						return;
				}
			case EBinop(op, e1, e2):
				switch op {
					case OpAssign:
						var attr = switch e1.expr {
							case EConst(CIdent(s)), EConst(CString(s)):
								s;
							default:
								Context.reportError("Dynamic attributes are not supported", e1.pos);
								return;
						}

						if (attr.startsWith("on")) {
							elExprs.push(macro var __a = $e2);
							elExprs.push(macro untyped __cs__($v{'__b.AddAttributeAction(__s++, "$attr", () => {0}.__hx_invoke0_o())'}, __a));
						} else if (attr == "@ref") {
							try {
								addRef(e2);
							} catch (e) {
								Context.reportError(e.message, e2.pos);
								return;
							}
						} else {
							elExprs.push(macro __b.AddAttributeString($seq, $v{attr}, cast $e2));
						}

					default:
						Context.reportError("Assign expected", p.pos);
						return;
				}
			default:
				Context.reportError("Invalid expression", p.pos);
				return;
		}
	}

	static function v(s:String, ?kind:StringLiteralKind) {
		return kind == null ? null : switch kind {
			case DoubleQuotes: macro $v{s};
			case SingleQuotes: MacroStringTools.formatString(s, Context.currentPos());
		}
	}

	static function modifyAccess(field:Field) {
		if (!(field.access ?? []).contains(APublic)) {
			if (field.meta == null)
				field.meta = [];
			for (m in field.meta)
				if (m.name == ":protected")
					return field;
			field.meta.push({
				name: ":protected",
				pos: field.pos
			});
		}
		return field;
	}
	#end
}
