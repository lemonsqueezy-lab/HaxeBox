package sandbox;

/** Hitboxes from a model */
@:native("Sandbox.ModelHitboxes")
final extern class ModelHitboxes extends sandbox.Component {
    function new():Void;
    /** The target SkinnedModelRenderer that holds the model/skeleton you want to take the hitboxes from. */
    var Renderer(default,default):sandbox.SkinnedModelRenderer;
    /** The target GameObject to report in trace hits. If this is unset we'll defaault to the gameobject on which this component is. */
    var Target(default,default):sandbox.GameObject;
    function AddHitbox(hitbox:sandbox.Hitbox):Void;
    @:protected function OnAwake():Void;
    @:protected function OnDestroy():Void;
    @:protected function OnDisabled():Void;
    @:protected function OnEnabled():Void;
    /** The gameobject tags have changed, update collision tags on the target objects */
    @:protected function OnTagsChanged():Void;
    function Rebuild():Void;
    function UpdatePositions():Void;
}
