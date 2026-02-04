package sandbox;

/** A model scene object that supports animations and can be rendered within a . */
@:native("Sandbox.SceneModel")
final extern class SceneModel {
    overload function new(sceneWorld:sandbox.SceneWorld, model:String, transform:Transform):Void;
    overload function new(sceneWorld:sandbox.SceneWorld, model:sandbox.Model, transform:Transform):Void;
    var AnimationGraph(default,default):sandbox.AnimationGraph;
    var PlaybackRate(default,default):Single;
    /** Allows the scene model to not use the anim graph so it can play sequences directly */
    var UseAnimGraph(default,default):Bool;
    /** Get the calculated motion from animgraph since last frame */
    var RootMotion(default,never):Transform;
    /** Allows playback of sequences directly, rather than using an animation graph. Requires disabled if the scene model has one. */
    var CurrentSequence(default,never):sandbox.AnimationSequence;
    /** Access this sceneobject's morph collection. Morphs are generally used in the model to control the face, for things like emotions and lip sync. */
    var Morphs(default,never):sandbox.MorphCollection;
    /** Access this sceneobject's direct playback. Direct playback is used to control the direct playback node in an animgraph to play sequences directly in code */
    var DirectPlayback(default,never):sandbox.AnimGraphDirectPlayback;
    /** Called when a footstep event happens */
    var OnFootstepEvent(default,default):system.Action1<sandbox.scenemodel.FootstepEvent>;
    /** Called when a generic event happens */
    var OnGenericEvent(default,default):system.Action1<sandbox.scenemodel.GenericEvent>;
    /** Called when a sound event happens */
    var OnSoundEvent(default,default):system.Action1<sandbox.scenemodel.SoundEvent>;
    /** Called when a anim tag event happens */
    var OnAnimTagEvent(default,default):system.Action1<sandbox.scenemodel.AnimTagEvent>;
    var Attributes(default,never):sandbox.RenderAttributes;
    /** The scene world this object belongs to. */
    var World(default,never):sandbox.SceneWorld;
    /** Transform of this scene object, relative to its , or if parent is not set. */
    var Transform(default,default):Transform;
    /** Rotation of this scene object, relative to its , or if parent is not set. */
    var Rotation(default,default):Rotation;
    /** Position of this scene object, relative to its , or if parent is not set. */
    var Position(default,default):Vector3;
    /** Set or get the axis aligned bounding box for this object. */
    var Bounds(default,default):BBox;
    /** Set the axis aligned bounding box by transforming by this objects transform. */
    var LocalBounds(default,default):BBox;
    /** Whether this scene object should render or not. */
    var RenderingEnabled(default,default):Bool;
    /** Color tint of this scene object. */
    var ColorTint(default,default):Color;
    /** Movement parent of this scene object, if any. */
    var Parent(default,never):sandbox.SceneObject;
    /** The model this scene object will render. */
    var Model(default,default):sandbox.Model;
    /** State of all bodygroups of this object's model. You might be looking for . */
    var MeshGroupMask(default,default):system.UInt64;
    /** This object is not batchable by material for some reason ( example: has dynamic attributes that affect rendering ) */
    var Batchable(default,default):Bool;
    /** Access to various advanced scene object flags. */
    var Flags(default,never):sandbox.sceneobject.SceneObjectFlagAccessor;
    /** For a layer to draw this object, the target layer must match (or be unset) and the flags must match */
    var RenderLayer(default,default):sandbox.SceneRenderLayer;
    /** List of tags for this scene object. */
    var Tags(default,never):sandbox.ITagSet;
    var ClipPlane(default,default):sandbox.Plane;
    var ClipPlaneEnabled(default,default):Bool;
    /** Clears all bone transform overrides. */
    function ClearBoneOverrides():Void;
    function DispatchTagEvents():Void;
    /** Get attachment transform by name. */
    function GetAttachment(name:String, worldspace:Bool):Null<Transform>;
    /** Returns the local space transform of a bone by its index. */
    overload function GetBoneLocalTransform(boneIndex:Int):Transform;
    overload function GetBoneLocalTransform(boneName:String):Transform;
    function GetBoneVelocity(boneIndex:Int, linear:Vector3, angular:Vector3):Void;
    /** Returns the world space transform of a bone by its index. */
    overload function GetBoneWorldTransform(boneIndex:Int):Transform;
    overload function GetBoneWorldTransform(boneName:String):Transform;
    /** Get an animated parameter */
    function GetBool(name:String):Bool;
    /** Get an animated parameter */
    function GetFloat(name:String):Single;
    /** Get an animated parameter */
    function GetInt(name:String):Int;
    /** Returns the parent space transform of a bone by its index. */
    function GetParentSpaceBone(i:Int):Transform;
    /** Get an animated parameter */
    function GetRotation(name:String):Rotation;
    /** Get an animated parameter */
    function GetVector3(name:String):Vector3;
    /** Whether any bone transforms have been overridden. */
    function HasBoneOverrides():Bool;
    /** Update our bones to match the target's bones. This is a manual bone merge. */
    function MergeBones(parent:sandbox.SceneModel):Void;
    /** Reset all animgraph parameters to their default values. */
    function ResetAnimParameters():Void;
    function RunPendingEvents():Void;
    /** Override the anim graph this scene model uses */
    function SetAnimGraph(name:String):Void;
    /** Sets a boolean animation graph parameter by name. */
    overload function SetAnimParameter(name:String, value:Bool):Void;
    overload function SetAnimParameter(name:String, value:Int):Void;
    overload function SetAnimParameter(name:String, value:Rotation):Void;
    overload function SetAnimParameter(name:String, value:Single):Void;
    overload function SetAnimParameter(name:String, value:Vector3):Void;
    /** Set which body group to use. */
    function SetBodyGroup(name:String, value:Int):Void;
    function SetBoneOverride(boneIndex:Int, transform:Transform):Void;
    /** Sets the world space bone transform of a bone by its index. */
    function SetBoneWorldTransform(boneIndex:Int, transform:Transform):Void;
    /** Set material group to replace materials of the model as set up in ModelDoc. */
    function SetMaterialGroup(name:String):Void;
    /** Update this animation. Delta is the time you want to advance, usually RealTime.Delta */
    function Update(delta:Single):Void;
    /** Update all of the bones to the bind pose */
    function UpdateToBindPose():Void;
}
