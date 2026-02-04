package sandbox;

/** Configurable options when spawning a networked object. */
@:native("Sandbox.NetworkSpawnOptions")
final extern class NetworkSpawnOptions {
    /** Configurable options when spawning a networked object. */
    function new():Void;
    var OrphanedMode(default,set):Null<sandbox.NetworkOrphaned>;

    private inline function set_OrphanedMode(value:Null<sandbox.NetworkOrphaned>):Null<sandbox.NetworkOrphaned> {
        var __value:Null<sandbox.NetworkOrphaned> = cast value;
        return untyped __cs__("{0}.OrphanedMode = {1}", this, __value);
    }

    var OwnerTransfer(default,set):Null<sandbox.OwnerTransfer>;

    private inline function set_OwnerTransfer(value:Null<sandbox.OwnerTransfer>):Null<sandbox.OwnerTransfer> {
        var __value:Null<sandbox.OwnerTransfer> = cast value;
        return untyped __cs__("{0}.OwnerTransfer = {1}", this, __value);
    }

    var Flags(default,set):Null<sandbox.NetworkFlags>;

    private inline function set_Flags(value:Null<sandbox.NetworkFlags>):Null<sandbox.NetworkFlags> {
        var __value:Null<sandbox.NetworkFlags> = cast value;
        return untyped __cs__("{0}.Flags = {1}", this, __value);
    }

    var AlwaysTransmit(default,set):Null<Bool>;

    private inline function set_AlwaysTransmit(value:Null<Bool>):Null<Bool> {
        var __value:Null<Bool> = cast value;
        return untyped __cs__("{0}.AlwaysTransmit = {1}", this, __value);
    }

    /** Should this networked object start enabled? */
    var StartEnabled(default,set):Bool;

    private inline function set_StartEnabled(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.StartEnabled = {1}", this, __value);
    }

    /** Who should be the owner of this networked object? */
    var Owner(default,set):sandbox.Connection;

    private inline function set_Owner(value:sandbox.Connection):sandbox.Connection {
        var __value:sandbox.Connection = cast value;
        return untyped __cs__("{0}.Owner = {1}", this, __value);
    }

    static var Default(default,never):sandbox.NetworkSpawnOptions;
}
