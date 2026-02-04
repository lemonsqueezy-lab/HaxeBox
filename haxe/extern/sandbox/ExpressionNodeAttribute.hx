package sandbox;

@:native("Sandbox.ExpressionNodeAttribute")
final extern class ExpressionNodeAttribute {
    function new(identifier:String):Void;
    var Identifier(default,never):String;
    var DefaultInputSignal(default,default):Bool;
    var DefaultOutputSignal(default,default):Bool;
    var InheritAsync(default,default):Bool;
    var TypeId(default,never):cs.system.Object;
}
