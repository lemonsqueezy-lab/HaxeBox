package sandbox;

/** Applies fire damage to any IDamageable in our Root object. Damage is tagged "fire" and "burn" */
@:native("Sandbox.FireDamage")
final extern class FireDamage extends sandbox.Component {
    function new():Void;
    var DamagePerSecond(default,default):Single;
    @:protected function OnFixedUpdate():Void;
}
