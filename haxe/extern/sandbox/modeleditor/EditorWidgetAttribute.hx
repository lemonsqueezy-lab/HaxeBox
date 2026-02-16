package sandbox.modeleditor;

/** Adds a custom editor widget to the game data node. Currently only 1 option is available - "HandPosePairEditor" */
@:native("Sandbox.ModelEditor.EditorWidgetAttribute")
extern class EditorWidgetAttribute extends editor.MetaDataAttribute {
    function new(editor:String):Void;
    function AddHelpers(helpers:system.collections.generic.List<system.Tuple<String,Array<String>>>):Void;
}
