package sandbox.modeleditor.nodes;

/** Defines an eye on a character model. */
@:native("Sandbox.ModelEditor.Nodes.ModelEye")
extern class ModelEye {
    function new():Void;
    var BoneName(default,default):String;
    var Radius(default,default):Single;
    var Yaw(default,default):Single;
}
