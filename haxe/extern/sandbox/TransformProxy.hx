package sandbox;

@:native("Sandbox.TransformProxy")
extern class TransformProxy {
    @:protected function new():Void;
    function GetLocalTransform():Transform;
    function GetWorldTransform():Transform;
    function SetLocalTransform(value:Transform):Void;
    function SetWorldTransform(value:Transform):Void;
}
