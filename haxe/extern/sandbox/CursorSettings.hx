package sandbox;

@:native("Sandbox.CursorSettings")
extern class CursorSettings extends sandbox.ConfigData {
    function new():Void;
    var Cursors(default,default):system.collections.generic.Dictionary<String,sandbox.cursorsettings.Cursor>;
}
