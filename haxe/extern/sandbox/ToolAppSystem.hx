package sandbox;

/** Used to create standalone tools that can still interop to the engine */
@:native("Sandbox.ToolAppSystem")
extern class ToolAppSystem {
    function new():Void;
    static var Content(default,never):sandbox.BaseFileSystem;
    @:protected
    var log(null,null):sandbox.diagnostics.Logger;
    function Dispose():Void;
    function Init():Void;
    @:protected function InitTool(createInfo:sandbox.AppSystemCreateInfo):Void;
}
