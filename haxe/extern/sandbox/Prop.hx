package sandbox;

/** A prop is defined by its model. The model can define its health and what happens when it breaks. This component is designed to be easy to use - since you only need to define the model. Although you can access the procedural (hidden) components, they aren't saved, so it's a waste of time. */
@:native("Sandbox.Prop")
extern class Prop extends sandbox.Component {
    function new():Void;
    var Model(default,default):sandbox.Model;
    var BodyGroups(default,default):system.UInt64;
    var MaterialGroup(default,default):String;
    var Tint(default,default):Color;
    @:protected
    var HasMaterialGroups(null,never):Bool;
    @:protected
    var HasBodyGroups(null,never):Bool;
    var Health(default,default):Single;
    /** If the prop is static - it won't have dynamic physics. This is usually used for things that you want to be breakable but don't move. Like fences and stuff. */
    var IsStatic(default,default):Bool;
    /** Physics will be asleep until it's woken up. */
    var StartAsleep(default,default):Bool;
    var OnPropBreak(default,default):system.Action;
    var OnPropTakeDamage(default,default):system.Action1<sandbox.DamageInfo>;
    /** True if this prop can be set on fire. */
    var IsFlammable(default,never):Bool;
    @:protected
    var IsOnFire(default,null):Bool;
    var LastAttacker(default,default):sandbox.GameObject;
    /** Delete this component and split into the procedural components that this prop created. */
    function Break():Void;
    function CreateExplosion():Void;
    /** Create the gibs and return them. */
    function CreateGibs():system.collections.generic.List<sandbox.Gib>;
    function Ignite():Void;
    function Kill():Void;
    /** Create the gibs for this prop breaking, over the network. This causes clients to spawn the gibs too. */
    function NetworkCreateGibs():Void;
    function OnDamage(damage:sandbox.DamageInfo):Void;
}
