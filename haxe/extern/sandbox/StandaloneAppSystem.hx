package sandbox;

@:native("Sandbox.StandaloneAppSystem")
extern class StandaloneAppSystem extends sandbox.AppSystem {
    function new():Void;
    function Init():Void;
    @:protected function RunFrame():Bool;
}
