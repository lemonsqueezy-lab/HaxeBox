package sandbox;

@:native("Sandbox.Friend")
final extern class Friend {
    overload function new(steamid:haxe.Int64):Void;
    overload function new(steamid:system.UInt64):Void;
    /** Returns true if this friend is the local user */
    var IsMe(default,never):Bool;
    /** The friend's Steam Id */
    var Id(default,never):system.UInt64;
    /** The friend's name */
    var Name(default,never):String;
    /** Returns true if your friend is online */
    var IsOnline(default,never):Bool;
    /** Returns true if this user is your friend */
    var IsFriend(default,never):Bool;
    /** Returns true if your friend is away */
    var IsAway(default,never):Bool;
    /** Returns true if this friend is marked as busy */
    var IsBusy(default,never):Bool;
    /** Returns true if this friend is marked as snoozing */
    var IsSnoozing(default,never):Bool;
    /** Returns true if they're playing this game */
    var IsPlayingThisGame(default,never):Bool;
    /** Returns true if they're playing any game */
    var IsPlayingAGame(default,never):Bool;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.Friend):Bool;
    function GetHashCode():Int;
    /** Returns a string that was possibly set by rich presence */
    function GetRichPresence(key:String):String;
    /** Opens the Steam overlay with a popup that allows the local Steam user to confirm whether to add this user to their Steam friends list. */
    function OpenAddFriendOverlay():Void;
    /** Opens the Steam overlay web browser to their user profile. */
    function OpenInOverlay():Void;
    function ToString():String;
}
