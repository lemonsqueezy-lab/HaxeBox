package sandbox;

@:native("Sandbox.QtAppSystem")
extern class QtAppSystem {
    function new():Void;
    @:protected
    var log(null,null):sandbox.diagnostics.Logger;
    function Init():Void;
    /** Explicitly load the Steam Api dll from our bin folder, so that it doesn't accidentally load one from c:\system32\ or something. This is a problem when people have installed pirate versions of Steam in the past and have the assembly hanging around still. By loading it here we're saying use this version, and it won't try to load another one. */
    @:protected function LoadSteamDll():Void;
    @:protected function OnShutdown():Void;
    function ProcessEvents():Void;
    function Run():Void;
    @:protected function RunFrame():Bool;
    function Shutdown():Void;
}
