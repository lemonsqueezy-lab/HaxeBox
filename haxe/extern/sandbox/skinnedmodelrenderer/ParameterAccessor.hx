package sandbox.skinnedmodelrenderer;

@:native("Sandbox.SkinnedModelRenderer.ParameterAccessor")
final extern class ParameterAccessor {
    var Graph(default,never):sandbox.AnimationGraph;
    overload function Clear():Void;
    overload function Clear(name:String):Void;
    function Contains(name:String):Bool;
    function GetBool(v:String):Bool;
    function GetFloat(v:String):Single;
    function GetInt(v:String):Int;
    function GetRotation(v:String):Rotation;
    function GetVector(v:String):Vector3;
    function Reset(name:String):Void;
    overload function Set(v:String, value:Bool):Void;
    overload function Set(v:String, value:Int):Void;
    overload function Set(v:String, value:Rotation):Void;
    overload function Set(v:String, value:Single):Void;
    overload function Set(v:String, value:Vector3):Void;
}
