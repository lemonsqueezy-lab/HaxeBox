package sandbox.partyroom;

@:native("Sandbox.PartyRoom.Entry")
final extern class Entry {
    var Name(default,never):String;
    var Members(default,never):Int;
    var IsFull(default,never):Bool;
    var OwnerId(default,never):haxe.Int64;
    var IsPlaying(default,never):Bool;
    var Package(default,never):String;
    var GameTitle(default,never):String;
    function Join():system.threading.tasks.Task;
}
