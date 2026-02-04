package sandbox.component;

/** Allows components to indicate their state in a generic way. This is useful if you have a temporary effect system in which you want to remove GameObjects when their effects have all finished. */
@:native("Sandbox.Component.ITemporaryEffect")
extern class ITemporaryEffect {
    /** Should return true if the effect is active in a visible way */
    var IsActive(default,never):Bool;
    /** Indicates to the target object that we want it to die. If it's looping then it should stop now and put itself in a state where it will eventually die. */
    function DisableLooping():Void;
    /** Disable the any looping effects. This indicates to the target object that we want it to die soon. */
    static function DisableLoopingEffects(go:sandbox.GameObject):Void;
}
