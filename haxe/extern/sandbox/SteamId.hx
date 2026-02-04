package sandbox;

/** Represents a Steam ID (64-bit unique identifier for Steam accounts). Provides type-safe storage and conversion between long/ulong representations. */
@:native("Sandbox.SteamId")
final extern class SteamId {
    /** Creates a Steam ID from a signed 64-bit integer. */
    overload function new(id:haxe.Int64):Void;
    /** Creates a Steam ID from an unsigned 64-bit integer. */
    overload function new(id:system.UInt64):Void;
    /** Gets the Steam ID as a signed 64-bit integer. */
    var Value(default,never):haxe.Int64;
    /** Gets the Steam ID as an unsigned 64-bit integer. */
    var ValueUnsigned(default,never):system.UInt64;
    /** Gets the type of Steam account this ID represents. */
    var AccountType(default,never):sandbox.steamid.AccountTypes;
    /** Returns the Steam ID as a string. */
    function ToString():String;
}
