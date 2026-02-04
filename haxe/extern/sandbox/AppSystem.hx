package sandbox;

@:native("Sandbox.AppSystem")
extern class AppSystem {
    function new():Void;
    @:protected
    var log(null,null):sandbox.diagnostics.Logger;
    /** Create the editor (Sandbox.Tools) */
    @:protected function CreateEditor():Void;
    /** Create the Game (Sandbox.GameInstance) */
    @:protected function CreateGame():Void;
    /** Create the Menu instance. */
    @:protected function CreateMenu():Void;
    function Init():Void;
    @:protected function InitGame(createInfo:sandbox.AppSystemCreateInfo, commandLine:String):Void;
    /** Explicitly load the Steam Api dll from our bin folder, so that it doesn't accidentally load one from c:\system32\ or something. This is a problem when people have installed pirate versions of Steam in the past and have the assembly hanging around still. By loading it here we're saying use this version, and it won't try to load another one. */
    @:protected function LoadSteamDll():Void;
    function Run():Void;
    @:protected function RunFrame():Bool;
    @:protected function SetWindowTitle(title:String):Void;
    function Shutdown():Void;
    /** We should check all the system requirements here as early as possible. */
    function TestSystemRequirements():Void;
}
