package sandbox;

@:native("Sandbox.TestAppSystem")
extern class TestAppSystem {
    function new():Void;
    @:protected
    var log(null,null):sandbox.diagnostics.Logger;
    function Init():Void;
}
