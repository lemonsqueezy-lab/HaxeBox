package sandbox;

/** Used to create standalone tools that can still interop to the engine */
@:native("Sandbox.ToolAppSystem")
extern class ToolAppSystem extends sandbox.AppSystem {
    function new():Void;
    static var Content(default,never):sandbox.BaseFileSystem;
    function Dispose():Void;
    function Init():Void;
    @:protected function InitTool(createInfo:sandbox.AppSystemCreateInfo):Void;
}
