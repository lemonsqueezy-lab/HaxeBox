package sandbox;

/** Added automatically by Hammer to GameObjects that have a map mesh tied to them. When a map is compiled the Model property is populated by the generated model. */
@:native("Sandbox.HammerMesh")
extern class HammerMesh extends sandbox.Component {
    function new():Void;
    /** Gets populated at compile time, will be valid when loading from compiled map */
    var Model(default,default):sandbox.Model;
    var UseRenderer(default,default):Bool;
    var UseCollision(default,default):Bool;
    var Tint(default,default):Color;
    var RenderType(default,default):sandbox.modelrenderer.ShadowRenderType;
    var Static(default,default):Bool;
    var Friction(default,default):Null<Single>;
    var Surface(default,default):sandbox.Surface;
    /** Set the local velocity of the surface so things can slide along it, like a conveyor belt */
    var SurfaceVelocity(default,default):Vector3;
    var IsTrigger(default,default):Bool;
    /** Called when a collider enters this trigger */
    var OnTriggerEnter(default,default):system.Action1<sandbox.Collider>;
    /** Called when a collider exits this trigger */
    var OnTriggerExit(default,default):system.Action1<sandbox.Collider>;
    @:protected function OnDisabled():Void;
    @:protected function OnEnabled():Void;
}
