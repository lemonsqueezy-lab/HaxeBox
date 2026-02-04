package sandbox.sprite;

/** Describes a single animation frame */
@:native("Sandbox.Sprite.Frame")
extern class Frame {
    function new():Void;
    var Texture(default,default):sandbox.Texture;
    var BroadcastMessages(default,default):system.collections.generic.List<sandbox.sprite.BroadcastEvent>;
}
