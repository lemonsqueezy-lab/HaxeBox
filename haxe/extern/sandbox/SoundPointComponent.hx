package sandbox;

/** Plays a sound at a point in the world. */
@:native("Sandbox.SoundPointComponent")
final extern class SoundPointComponent extends sandbox.BaseSoundComponent {
    function new():Void;
    @:protected function DrawGizmos():Void;
    @:protected function OnDisabled():Void;
    @:protected function OnEnabled():Void;
    @:protected function OnUpdate():Void;
    function StartSound():Void;
    function StopSound():Void;
}
