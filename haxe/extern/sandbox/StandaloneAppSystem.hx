package sandbox;

@:native("Sandbox.StandaloneAppSystem")
extern class StandaloneAppSystem {
    function new():Void;
    @:protected
    var log(null,null):sandbox.diagnostics.Logger;
    function Init():Void;
    @:protected function RunFrame():Bool;
}
