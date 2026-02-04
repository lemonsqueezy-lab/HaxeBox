package sandbox.modals;

@:native("Sandbox.Modals.FriendsListModalOptions")
final extern class FriendsListModalOptions {
    function new():Void;
    /** Show offline members */
    var ShowOfflineMembers(default,set):Bool;

    private inline function set_ShowOfflineMembers(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.ShowOfflineMembers = {1}", this, __value);
    }

    /** Show online (but not in-game) members */
    var ShowOnlineMembers(default,set):Bool;

    private inline function set_ShowOnlineMembers(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.ShowOnlineMembers = {1}", this, __value);
    }

}
