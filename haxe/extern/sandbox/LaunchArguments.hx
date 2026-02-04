package sandbox;

/** These are arguments that were set when launching the current game. This is used to pre-configure the game from the menu */
@:native("Sandbox.LaunchArguments")
final extern class LaunchArguments {
    /** The map to start with. It's really up to the game to use this */
    static var Map(default,default):String;
    /** Preferred max players for multiplayer games. Used by games, but not enforced. */
    static var MaxPlayers(default,default):Int;
    /** Default privacy for lobbies created on game start. */
    static var Privacy(default,default):sandbox.network.LobbyPrivacy;
    /** The game settings to apply on join. These are a list of convars. */
    static var GameSettings(default,default):system.collections.generic.Dictionary<String,String>;
    /** The hostname for the server. */
    static var ServerName(default,default):String;
}
