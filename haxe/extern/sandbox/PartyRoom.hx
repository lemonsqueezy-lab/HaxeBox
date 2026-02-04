package sandbox;

/** A Party. A Party with your friends. */
@:native("Sandbox.PartyRoom")
extern class PartyRoom {
    static var Current(default,never):sandbox.PartyRoom;
    /** The unique identifier of this lobby */
    var Id(default,never):sandbox.SteamId;
    /** Allow communication via voice when in the main menu. */
    var VoiceCommunicationAllowed(default,never):Bool;
    var VoiceRecording(default,default):Bool;
    /** A list of members in this room */
    var Members(default,never):system.collections.generic.IEnumerable<sandbox.Friend>;
    var Owner(default,never):sandbox.Friend;
    var OnChatMessage(default,default):system.Action2<sandbox.Friend,String>;
    var OnJoin(default,default):system.Action1<sandbox.Friend>;
    var OnLeave(default,default):system.Action1<sandbox.Friend>;
    var OnVoiceData(default,default):system.Action2<sandbox.Friend,Array<Int>>;
    static overload function Create(maxMembers:Int):system.threading.tasks.Task1<sandbox.PartyRoom>;
    static overload function Create(maxMembers:Int, name:String, ispublic:Bool):system.threading.tasks.Task1<sandbox.PartyRoom>;
    static function Find():system.threading.tasks.Task1<Array<sandbox.partyroom.Entry>>;
    function Leave():Void;
    function SendChatMessage(text:String):Void;
    /** Set the owner to someone else. You need to be the owner */
    function SetOwner(friend:sandbox.SteamId):Bool;
}
