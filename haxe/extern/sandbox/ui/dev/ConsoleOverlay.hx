package sandbox.ui.dev;

@:native("Sandbox.UI.Dev.ConsoleOverlay")
extern class ConsoleOverlay extends sandbox.ui.Panel {
    function new():Void;
    static var ConsoleOverlayEnabled(default,default):Bool;
}
