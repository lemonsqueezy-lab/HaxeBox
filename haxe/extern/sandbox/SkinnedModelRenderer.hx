package sandbox;

/** Renders a skinned model in the world. A skinned model is any model with bones/animations. */
@:native("Sandbox.SkinnedModelRenderer")
final extern class SkinnedModelRenderer extends sandbox.ModelRenderer {
    function new():Void;
    var CreateBoneObjects(default,default):Bool;
    var BoneMergeTarget(default,default):sandbox.SkinnedModelRenderer;
    /** Usually used for turning off animation on ragdolls. */
    var UseAnimGraph(default,default):Bool;
    /** Override animgraph, otherwise uses animgraph of the model. */
    var AnimationGraph(default,default):sandbox.AnimationGraph;
    /** Allows playback of sequences directly, rather than using an animation graph. Requires disabled if the scene model has one. */
    var Sequence(default,never):sandbox.skinnedmodelrenderer.SequenceAccessor;
    /** Control playback rate of animgraph or current sequence. */
    var PlaybackRate(default,default):Single;
    var SceneModel(default,never):sandbox.SceneModel;
    var RootMotion(default,never):Transform;
    /** If true then animations will play while in an editor scene. */
    var PlayAnimationsInEditorScene(default,default):Bool;
    /** Called when a footstep event happens */
    var OnFootstepEvent(default,default):system.Action1<sandbox.scenemodel.FootstepEvent>;
    /** Called when a generic animation event happens */
    var OnGenericEvent(default,default):system.Action1<sandbox.scenemodel.GenericEvent>;
    /** Called when a sound event happens */
    var OnSoundEvent(default,default):system.Action1<sandbox.scenemodel.SoundEvent>;
    /** Called when an anim tag event happens */
    var OnAnimTagEvent(default,default):system.Action1<sandbox.scenemodel.AnimTagEvent>;
    /** Access to the morphs for this model */
    var Morphs(default,never):sandbox.skinnedmodelrenderer.MorphAccessor;
    var ShouldShowMorphsEditor(default,never):Bool;
    /** Access to the animgraph parameters for this model */
    var Parameters(default,never):sandbox.skinnedmodelrenderer.ParameterAccessor;
    var ShouldShowParametersEditor(default,never):Bool;
    var ShouldShowSequenceEditor(default,never):Bool;
    /** This sets ik.{name}.enabled to false. */
    function ClearIk(name:String):Void;
    /** Remove any stored parameters */
    function ClearParameters():Void;
    function ClearPhysicsBones():Void;
    function GetAttachment(name:String, worldSpace:Bool):Null<Transform>;
    /** Get the GameObject of a specific bone. */
    overload function GetBoneObject(index:Int):sandbox.GameObject;
    overload function GetBoneObject(boneName:String):sandbox.GameObject;
    overload function GetBoneObject(bone:sandbox.bonecollection.Bone):sandbox.GameObject;
    /** Allocate an array of bone transforms in either world space or parent space. */
    function GetBoneTransforms(world:Bool):Array<Transform>;
    /** Allocate an array of bone velocities in world space */
    function GetBoneVelocities():Array<sandbox.skinnedmodelrenderer.BoneVelocity>;
    /** Retrieve the bone's velocities based on previous and current position */
    function GetBoneVelocity(boneIndex:Int):sandbox.skinnedmodelrenderer.BoneVelocity;
    function GetBool(v:String):Bool;
    function GetFloat(v:String):Single;
    function GetInt(v:String):Int;
    function GetRotation(v:String):Rotation;
    function GetVector(v:String):Vector3;
    @:protected function OnDisabled():Void;
    @:protected function OnEnabled():Void;
    @:protected function OnParentChanged(oldParent:sandbox.GameObject, newParent:sandbox.GameObject):Void;
    function PostAnimationUpdate():Void;
    overload function Set(v:String, value:Bool):Void;
    overload function Set(v:String, value:Int):Void;
    overload function Set(v:String, value:Rotation):Void;
    overload function Set(v:String, value:Single):Void;
    overload function Set(v:String, value:Vector3):Void;
    function SetBoneTransform(bone:sandbox.bonecollection.Bone, transform:Transform):Void;
    /** Sets an IK parameter. This sets 3 variables that should be set in the animgraph: 1. ik.{name}.enabled 2. ik.{name}.position 3. ik.{name}.rotation */
    function SetIk(name:String, tx:Transform):Void;
    /** Converts value to vector local to this entity's eyepos and passes it to SetAnimVector */
    overload function SetLookDirection(name:String, eyeDirectionWorld:Vector3):Void;
    overload function SetLookDirection(name:String, eyeDirectionWorld:Vector3, weight:Single):Void;
    overload function TryGetBoneTransform(boneName:String, tx:Transform):Bool;
    overload function TryGetBoneTransform(bone:sandbox.bonecollection.Bone, tx:Transform):Bool;
    function TryGetBoneTransformAnimation(bone:sandbox.bonecollection.Bone, tx:Transform):Bool;
    overload function TryGetBoneTransformLocal(boneName:String, tx:Transform):Bool;
    overload function TryGetBoneTransformLocal(bone:sandbox.bonecollection.Bone, tx:Transform):Bool;
    @:protected function UpdateObject():Void;
}
