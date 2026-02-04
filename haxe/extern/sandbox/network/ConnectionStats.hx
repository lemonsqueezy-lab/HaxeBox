package sandbox.network;

@:native("Sandbox.Network.ConnectionStats")
final extern class ConnectionStats {
    /** Current ping for this connection. */
    var Ping(default,set):Int;

    private inline function set_Ping(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Ping = {1}", this, __value);
    }

    /** How many packets per second we're sending to this connection. */
    var OutPacketsPerSecond(default,set):Single;

    private inline function set_OutPacketsPerSecond(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.OutPacketsPerSecond = {1}", this, __value);
    }

    /** How many bytes per second we're sending to this connection. */
    var OutBytesPerSecond(default,set):Single;

    private inline function set_OutBytesPerSecond(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.OutBytesPerSecond = {1}", this, __value);
    }

    /** How many packets per second we're receiving from this connection. */
    var InPacketsPerSecond(default,set):Single;

    private inline function set_InPacketsPerSecond(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.InPacketsPerSecond = {1}", this, __value);
    }

    /** How many bytes per second we're receiving from this connection. */
    var InBytesPerSecond(default,set):Single;

    private inline function set_InBytesPerSecond(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.InBytesPerSecond = {1}", this, __value);
    }

    /** Estimate rate that we believe we can send data to this connection. */
    var SendRateBytesPerSecond(default,set):Int;

    private inline function set_SendRateBytesPerSecond(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.SendRateBytesPerSecond = {1}", this, __value);
    }

    /** From 0 to 1 how good is our connection to this? */
    var ConnectionQuality(default,set):Single;

    private inline function set_ConnectionQuality(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.ConnectionQuality = {1}", this, __value);
    }

    function ToString():String;
}
