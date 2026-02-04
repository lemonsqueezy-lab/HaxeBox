package sandbox.modeleditor.nodes;

/** Carries navigation related data. */
@:native("Sandbox.ModelEditor.Nodes.ModelNavData")
extern class ModelNavData {
    function new():Void;
    /** During map compile this model would mark its volume as an area that should be avoided by AI. */
    var Avoid(default,default):Bool;
}
