package sandbox;

/** Applies damage in a radius, with physics force, and optional occlusion */
@:native("Sandbox.RadiusDamage")
final extern class RadiusDamage extends sandbox.Component {
    function new():Void;
    /** Should the world shield victims from damage? */
    var Radius(default,default):Single;
    /** How much physics force should be applied on explosion? */
    var PhysicsForceScale(default,default):Single;
    /** If enabled we'll apply damage once as soon as enabled */
    var DamageOnEnabled(default,default):Bool;
    /** Should the world shield victims from damage? */
    var Occlusion(default,default):Bool;
    /** The amount of damage inflicted */
    var DamageAmount(default,default):Single;
    /** Tags to apply to the damage */
    var DamageTags(default,default):sandbox.TagSet;
    /** Who should we credit with this attack? */
    var Attacker(default,default):sandbox.GameObject;
    /** Apply the damage now */
    function Apply():Void;
    static function ApplyDamage(sphere:sandbox.Sphere, damage:sandbox.DamageInfo, physicsForce:Single, ignore:sandbox.GameObject):Void;
    @:protected function DrawGizmos():Void;
    @:protected function OnEnabled():Void;
}
