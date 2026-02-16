package sandbox;

/** Deals damage to objects inside */
@:native("Sandbox.TriggerHurt")
final extern class TriggerHurt extends sandbox.Component {
    function new():Void;
    /** If not empty, the target must have one of these tags */
    var DamageTags(default,default):sandbox.TagSet;
    /** How much damage to apply */
    var Damage(default,default):Single;
    /** The delay between applying the damage */
    var Rate(default,default):Single;
    /** If not empty, the target must have one of these tags */
    var Include(default,default):sandbox.TagSet;
    /** If not empty, the target must not have one of these tags */
    var Exclude(default,default):sandbox.TagSet;
    @:protected function OnFixedUpdate():Void;
}
