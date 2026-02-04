package sandbox;

/** Describes the damage that should be done to something. This is purposefully a class so it can be derived from, allowing games to create their own special types of damage, while not having to create a whole new system. */
@:native("Sandbox.DamageInfo")
extern class DamageInfo {
    overload function new():Void;
    overload function new(damage:Single, attacker:sandbox.GameObject, weapon:sandbox.GameObject):Void;
    overload function new(damage:Single, attacker:sandbox.GameObject, weapon:sandbox.GameObject, hitbox:sandbox.Hitbox):Void;
    /** Usually a player or Npc */
    var Attacker(default,default):sandbox.GameObject;
    /** The weapon that did the damage, or a vehicle etc */
    var Weapon(default,default):sandbox.GameObject;
    /** The hitbox that we hit (if any) */
    var Hitbox(default,default):sandbox.Hitbox;
    /** Amount of damage this should do */
    var Damage(default,default):Single;
    /** The origin of the damage. For bullets this would be the shooter's eye position. For explosions, this would be the center of the exposion. */
    var Origin(default,default):Vector3;
    /** The location of the damage on the hit object. */
    var Position(default,default):Vector3;
    /** The physics shape that we hit (if any) */
    var Shape(default,default):sandbox.PhysicsShape;
    /** Tags for this damage, allows you to enter and read different damage types etc */
    var Tags(default,default):sandbox.TagSet;
    /** True if this is explosive damage */
    var IsExplosion(default,default):Bool;
}
