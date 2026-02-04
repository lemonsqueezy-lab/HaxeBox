package;

#if macro
import haxe.macro.Expr;
import haxe.macro.Context;
import haxe.macro.Compiler;
import haxe.macro.PositionTools;
#end

using StringTools;

class HaxeBoxMacro {
	#if macro
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

	public static function init() {
		Compiler.addGlobalMetadata("", "@:build(HaxeBoxMacro.build())", true);
	}

	public static function build():Array<Field> {
		var fields = Context.getBuildFields() ?? [];
		var cls = Context.getLocalClass()?.get();
		if (cls == null)
			return fields;

		var file = (PositionTools.getInfos(cls.pos).file ?? "").toLowerCase();
		if (!file.startsWith("code"))
			return fields;

		cls.meta.add(":nativeGen", [], cls.pos);

		if (!cls.meta.has(":native"))
			cls.meta.add(":native", [macro $v{cls.module}], cls.pos);

		fields = [
			for (field in fields) {
				field.meta = [
					for (m in field.meta) {
						var name = m.name.charAt(0) == ":" ? m.name.substr(1) : m.name;
						if (ATTR.exists(name)) {
							pos: m.pos,
							name: ":meta",
							params: [
								macro $i{ATTR[name]}(${
									for (p in m.params ?? [])
										p
								})
							]
						} else m;
					}
				];
				switch field.kind {
					case FProp(get, set, t, e):
						field.meta.push({
							pos: field.pos,
							name: ":property"
						});
					default:
				}
				field;
			}
		];

		return fields;
	}
	#end
}
