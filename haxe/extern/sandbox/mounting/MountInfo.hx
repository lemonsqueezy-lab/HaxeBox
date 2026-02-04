package sandbox.mounting;

/** Information about a single mount */
@:native("Sandbox.Mounting.MountInfo")
final extern class MountInfo {
    function new(e:sandbox.mounting.BaseGameMount):Void;
    /** A short, lowercase string that will be used to uniquely identify this asset source */
    var Ident(default,set):String;

    private inline function set_Ident(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Ident = {1}", this, __value);
    }

    /** The display name of this */
    var Title(default,set):String;

    private inline function set_Title(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Title = {1}", this, __value);
    }

    /** Is this source available, is this game installed? Can we mount it? */
    var Available(default,set):Bool;

    private inline function set_Available(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.Available = {1}", this, __value);
    }

    /** Is this active and mounted? */
    var Mounted(default,set):Bool;

    private inline function set_Mounted(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.Mounted = {1}", this, __value);
    }

}
