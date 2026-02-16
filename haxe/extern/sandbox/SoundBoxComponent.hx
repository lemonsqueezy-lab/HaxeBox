package sandbox;

/** Plays a sound within a box. */
@:native("Sandbox.SoundBoxComponent")
final extern class SoundBoxComponent extends sandbox.BaseSoundComponent {
    function new():Void;
    var Scale(default,default):Vector3;
    var Inner(default,never):BBox;
    var SndPos(default,never):Vector3;
    @:protected function DrawGizmos():Void;
    @:protected function OnDestroy():Void;
    @:protected function OnEnabled():Void;
    @:protected function OnUpdate():Void;
    function StartSound():Void;
    function StopSound():Void;
}
