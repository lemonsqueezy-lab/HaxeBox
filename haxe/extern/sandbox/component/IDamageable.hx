package sandbox.component;

/** A component that can be damaged by something. */
@:native("Sandbox.Component.IDamageable")
extern class IDamageable {
    function OnDamage(damage:sandbox.DamageInfo):Void;
}
