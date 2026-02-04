package sandbox;

/** Watch folders, dispatch events on changed files */
@:native("Sandbox.FileWatch")
final extern class FileWatch {
    var Enabled(default,default):Bool;
    var Changes(default,never):system.collections.generic.List<String>;
    var watchFiles(default,default):system.collections.generic.List<String>;
    function Dispose():Void;
    static function Tick():Void;
}
