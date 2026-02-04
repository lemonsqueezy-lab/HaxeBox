package sandbox.utility;

@:native("Sandbox.Utility.Steam")
final extern class Steam {
    /** The current user's SteamId */
    static var SteamId(default,never):sandbox.SteamId;
    /** The current user's persona name (Steam name) */
    static var PersonaName(default,never):String;
    /** Return what type os SteamId this is */
    static function CategorizeSteamId(steamid:sandbox.SteamId):sandbox.steamid.AccountTypes;
    /** Filters chat messages using Steam's text filter. */
    static function FilterChat(input:String, from:Null<sandbox.SteamId>):String;
    /** Filters player names using Steam's text filter. */
    static function FilterName(input:String, from:Null<sandbox.SteamId>):String;
    /** Filters text for game content using Steam's text filter. */
    static function FilterText(input:String, from:Null<sandbox.SteamId>):String;
    /** Return true if this is a friend */
    static function IsFriend(steamid:sandbox.SteamId):Bool;
    /** Return true if this person is online */
    static function IsOnline(steamid:sandbox.SteamId):Bool;
}
