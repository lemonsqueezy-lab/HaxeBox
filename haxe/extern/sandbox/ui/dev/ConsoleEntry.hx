package sandbox.ui.dev;

@:native("Sandbox.UI.Dev.ConsoleEntry")
extern class ConsoleEntry extends sandbox.ui.Panel {
    function new():Void;
    var Time(default,default):sandbox.ui.Label;
    var Message(default,default):sandbox.ui.Label;
    var Event(default,default):sandbox.LogEvent;
    var AutoDelete(default,default):Bool;
    var TimeUntilDelete(default,default):sandbox.RealTimeUntil;
    function Tick():Void;
}
