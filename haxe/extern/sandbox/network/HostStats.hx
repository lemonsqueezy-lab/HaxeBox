package sandbox.network;

@:native("Sandbox.Network.HostStats")
final extern class HostStats {
    var OutBytesPerSecond(default,set):Single;

    private inline function set_OutBytesPerSecond(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.OutBytesPerSecond = {1}", this, __value);
    }

    var InBytesPerSecond(default,set):Single;

    private inline function set_InBytesPerSecond(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.InBytesPerSecond = {1}", this, __value);
    }

    var Fps(default,set):Int;

    private inline function set_Fps(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Fps = {1}", this, __value);
    }

}
