package sandbox.modeleditor.nodes;

@:native("Sandbox.ModelEditor.Nodes.ModelEyeOcclusion")
extern class ModelEyeOcclusion {
    function new():Void;
    var BoneName(default,default):String;
    var Dimensions(default,default):Vector3;
    var OriginOffset(default,default):Vector3;
    var Angles(default,default):Angles;
}
