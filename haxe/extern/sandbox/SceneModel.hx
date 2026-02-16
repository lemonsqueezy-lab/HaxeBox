package sandbox;

/** A model scene object that supports animations and can be rendered within a . */
@:native("Sandbox.SceneModel")
final extern class SceneModel extends sandbox.SceneObject {
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
