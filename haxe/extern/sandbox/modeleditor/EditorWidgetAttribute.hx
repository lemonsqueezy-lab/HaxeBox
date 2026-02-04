package sandbox.modeleditor;

/** Adds a custom editor widget to the game data node. Currently only 1 option is available - "HandPosePairEditor" */
@:native("Sandbox.ModelEditor.EditorWidgetAttribute")
extern class EditorWidgetAttribute {
    function new(editor:String):Void;
    var TypeId(default,never):cs.system.Object;
    function AddHelpers(helpers:system.collections.generic.List<system.Tuple<String,Array<String>>>):Void;
}
