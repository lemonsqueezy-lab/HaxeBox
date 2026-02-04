package sandbox.menuengine;

@:native("Sandbox.MenuEngine.Account")
final extern class Account {
    /** Return true if the user has linked their account to a streamer service like twitch */
    static var HasLinkedStreamerServices(default,never):Bool;
    /** A list of favourites packages */
    static var Favourites(default,never):system.collections.generic.IEnumerable<sandbox.Package>;
}
