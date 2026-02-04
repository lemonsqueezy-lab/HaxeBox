package sandbox.actiongraphs;

/** Helper methods for action graph editor tools. Mostly workaround for and being internal. */
@:native("Sandbox.ActionGraphs.ActionGraphEditorExtensions")
final extern class ActionGraphEditorExtensions {
    static overload function GetNodeProperties(prefabPath:String):system.collections.generic.IReadOnlyDictionary<String,cs.system.Object>;
    static overload function GetNodeProperties(component:sandbox.Component):system.collections.generic.IReadOnlyDictionary<String,cs.system.Object>;
    static overload function GetNodeProperties(go:sandbox.GameObject):system.collections.generic.IReadOnlyDictionary<String,cs.system.Object>;
    static function GetSceneReference(node:facepunch.actiongraphs.Node, scene:sandbox.Scene, actionGraphDelegate:facepunch.actiongraphs.IActionGraphDelegate):Null<sandbox.actiongraphs.SceneReferenceNode>;
    /** Find all s and s referenced by the given . */
    static function GetSceneReferences(actionGraphDelegate:facepunch.actiongraphs.IActionGraphDelegate):system.collections.generic.IEnumerable<sandbox.actiongraphs.SceneReferenceNode>;
}
