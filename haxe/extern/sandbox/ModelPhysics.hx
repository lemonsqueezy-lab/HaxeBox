package sandbox;

/** Physics for a model. This is primarily used for ragdolls and other physics driven models, otherwise you should be using a Rigidbody. */
@:native("Sandbox.ModelPhysics")
final extern class ModelPhysics extends sandbox.Component {
    function new():Void;
    var PhysicsGroup(default,never):sandbox.PhysicsGroup;
    var PhysicsWereCreated(default,default):Bool;
    /** The model used to generate physics bodies, collision shapes, and joints. */
    var Model(default,default):sandbox.Model;
    /** The renderer that receives transform updates from physics bodies. */
    var Renderer(default,default):sandbox.SkinnedModelRenderer;
    /** If true, the root physics body will not drive this component's transform. */
    var IgnoreRoot(default,default):Bool;
    /** Rigidbody flags applied to all bodies. */
    var RigidbodyFlags(default,default):sandbox.RigidbodyFlags;
    /** Rigidbody locking applied to all bodies. */
    var Locking(default,default):sandbox.PhysicsLock;
    /** All bodies will be put to sleep on start. */
    var StartAsleep(default,default):Bool;
    /** Enable to drive renderer from physics, disable to drive physics from renderer. */
    var MotionEnabled(default,default):Bool;
    /** Returns the total mass of every */
    var Mass(default,never):Single;
    /** Returns the center of mass of every in world-space */
    var MassCenter(default,never):Vector3;
    /** Networked list of bodies. */
    var Bodies(default,default):system.collections.generic.List<sandbox.modelphysics.Body>;
    /** Networked list of joints. */
    var Joints(default,default):system.collections.generic.List<sandbox.modelphysics.Joint>;
    /** Copy the bone positions and velocities from a different SkinnedModelRenderer */
    function CopyBonesFrom(source:sandbox.SkinnedModelRenderer, teleport:Bool):Void;
    @:protected function OnAwake():Void;
    @:protected function OnDestroy():Void;
    @:protected function OnDisabled():Void;
    @:protected function OnEnabled():Void;
    @:protected function OnFixedUpdate():Void;
    @:protected function OnRefresh():Void;
    @:protected function OnStart():Void;
    @:protected function OnUpdate():Void;
}
