package sandbox;

/** Support's Source Engine's vpcf particles */
@:native("Sandbox.LegacyParticleSystem")
extern class LegacyParticleSystem extends sandbox.Component {
    function new():Void;
    var Looped(default,default):Bool;
    var PlaybackSpeed(default,default):Single;
    var Particles(default,default):sandbox.ParticleSystem;
    var ControlPoints(default,default):system.collections.generic.List<sandbox.ParticleControlPoint>;
    var SceneObject(default,never):sandbox.SceneParticles;
    @:protected function DrawGizmos():Void;
    @:protected function OnAwake():Void;
    @:protected function OnDisabled():Void;
    @:protected function OnEnabled():Void;
    @:protected function OnTagsChanged():Void;
    @:protected function OnUpdate():Void;
}
