package sandbox.sprite;

/** The different loop modes for sprite animation. */
@:native("Sandbox.Sprite.LoopMode")
extern enum abstract LoopMode(Int) {
    var None;
    var Loop;
    var PingPong;
}
