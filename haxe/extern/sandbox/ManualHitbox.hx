package sandbox;

/** A hitbox that can be placed manually on a GameObject, instead of coming from a model */
@:native("Sandbox.ManualHitbox")
final extern class ManualHitbox extends sandbox.Component {
    function new():Void;
    /** The target GameObject to report in trace hits. If this is unset we'll default to the gameobject on which this component is. */
    var Target(default,default):sandbox.GameObject;
    var Shape(default,default):sandbox.manualhitbox.HitboxShape;
    var Radius(default,default):Single;
    var CenterA(default,default):Vector3;
    var CenterB(default,default):Vector3;
    var HitboxTags(default,default):sandbox.TagSet;
    @:protected function DrawGizmos():Void;
    @:protected function OnAwake():Void;
    @:protected function OnDirty():Void;
    @:protected function OnDisabled():Void;
    @:protected function OnEnabled():Void;
    /** Tags have been updated */
    @:protected function OnTagsChanged():Void;
    function Rebuild():Void;
    function UpdatePositions():Void;
}
