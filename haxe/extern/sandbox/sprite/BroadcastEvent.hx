package sandbox.sprite;

/** A message that is broadcast when a frame is displayed. */
@:native("Sandbox.Sprite.BroadcastEvent")
extern class BroadcastEvent {
    function new():Void;
    var Type(default,default):sandbox.sprite.BroadcastEventType;
    var Message(default,default):String;
    var Sound(default,default):sandbox.SoundEvent;
    var Prefab(default,default):sandbox.GameObject;
    function ToString():String;
}
