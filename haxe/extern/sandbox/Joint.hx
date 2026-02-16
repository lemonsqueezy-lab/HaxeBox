package sandbox;

@:native("Sandbox.Joint")
extern class Joint extends sandbox.Component {
    @:protected function new():Void;
    /** Are local frames calculated automatically or set manually. See , */
    var Attachment(default,default):sandbox.joint.AttachmentMode;
    /** Only used on joint creation. See */
    var LocalFrame1(default,default):Transform;
    /** Only used on joint creation. See */
    var LocalFrame2(default,default):Transform;
    /** The body this joint is anchored to. If this is null then it will use the current GameObject as the anchor. */
    var AnchorBody(default,default):sandbox.GameObject;
    /** Game object to find the body to attach this joint to. */
    var Body(default,default):sandbox.GameObject;
    /** Enable or disable collision between the two bodies. */
    var EnableCollision(default,default):Bool;
    /** Is the joint broken on start. */
    var StartBroken(default,default):Bool;
    /** Strength of the linear constraint. If it takes any more energy than this, it'll break. */
    var BreakForce(default,default):Single;
    /** Strength of the angular constraint. If it takes any more energy than this, it'll break. */
    var BreakTorque(default,default):Single;
    /** Called when the joint breaks. */
    var OnBreak(default,default):system.Action;
    /** Current linear stress applied to the joint. */
    var LinearStress(default,never):Single;
    /** Current angular stress applied to the joint. */
    var AngularStress(default,never):Single;
    /** Is the joint currently broken and inactive. */
    var IsBroken(default,never):Bool;
    /** The source physics body this joint is attached to. */
    var Body1(default,never):sandbox.PhysicsBody;
    /** The source GameObject we're connected to */
    var Object1(default,never):sandbox.GameObject;
    /** The target physics body this joint is constraining. */
    var Body2(default,never):sandbox.PhysicsBody;
    /** The target GameObject we're connected to */
    var Object2(default,never):sandbox.GameObject;
    /** A specific point this joint is attached at on */
    var Point1(default,default):sandbox.physics.PhysicsPoint;
    /** A specific point this joint is attached at on */
    var Point2(default,default):sandbox.physics.PhysicsPoint;
    function Break():Void;
    /** Joint type implementation. */
    @:protected function CreateJoint(point1:sandbox.physics.PhysicsPoint, point2:sandbox.physics.PhysicsPoint):sandbox.physics.PhysicsJoint;
    @:protected function DestroyJoint():Void;
    @:protected function DrawGizmos():Void;
    @:protected function OnDestroy():Void;
    @:protected function OnDisabled():Void;
    @:protected function OnEnabled():Void;
    @:protected function OnStart():Void;
    function Unbreak():Void;
}
