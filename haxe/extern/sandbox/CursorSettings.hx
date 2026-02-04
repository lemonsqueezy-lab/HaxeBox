package sandbox;

@:native("Sandbox.CursorSettings")
extern class CursorSettings {
    function new():Void;
    var Version(default,never):Int;
    var Cursors(default,default):system.collections.generic.Dictionary<String,sandbox.cursorsettings.Cursor>;
    var Guid(default,default):system.Guid;
}
