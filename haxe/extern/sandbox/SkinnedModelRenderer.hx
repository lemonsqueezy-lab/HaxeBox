package sandbox;

/** Renders a skinned model in the world. A skinned model is any model with bones/animations. */
@:native("Sandbox.SkinnedModelRenderer")
final extern class SkinnedModelRenderer {
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
    var Bounds(default,never):BBox;
    var LocalBounds(default,never):BBox;
    var Model(default,default):sandbox.Model;
    var Tint(default,default):Color;
    var CreateAttachments(default,default):Bool;
    var BodyGroups(default,default):system.UInt64;
    var HasBodyGroups(default,never):Bool;
    var MaterialGroup(default,default):String;
    var HasMaterialGroups(default,never):Bool;
    var RenderType(default,default):sandbox.modelrenderer.ShadowRenderType;
    /** Force a level of detail. */
    var LodOverride(default,default):Null<Int>;
    var SceneObject(default,never):sandbox.SceneObject;
    var MaterialOverride(default,default):sandbox.Material;
    /** Access to the materials */
    var Materials(default,never):sandbox.engine.MaterialAccessor;
    var RenderOptions(default,never):sandbox.RenderOptions;
    /** Attributes that are applied to the renderer based on the current material and shader. If the renderer is disabled, the changes are deferred until it is enabled again. Attributes are not saved to disk, and are not cloned when copying the renderer. */
    var Attributes(default,never):sandbox.RenderAttributes;
    /** A command list which is executed immediately before rendering this */
    var ExecuteBefore(default,default):sandbox.rendering.CommandList;
    /** A command list which is executed immediately after rendering this */
    var ExecuteAfter(default,default):sandbox.rendering.CommandList;
    /** The scene this Component is in. This is a shortcut for `GameObject.Scene`. */
    var Scene(default,never):sandbox.Scene;
    /** The transform of the GameObject this component belongs to. Components don't have their own transforms but they can access the transform of the GameObject they belong to. This is a shortcut for `GameObject.Transform`. */
    var Transform(default,never):sandbox.GameTransform;
    /** The GameObject this component belongs to. */
    var GameObject(default,never):sandbox.GameObject;
    /** Allow creating tasks that are automatically cancelled when the GameObject is destroyed. */
    @:protected
    var Task(null,never):sandbox.TaskSource;
    /** Access components on this component's GameObject */
    var Components(default,never):sandbox.ComponentList;
    /** The enable state of this . This doesn't tell you whether the component is actually active because its parent might be disabled. This merely tells you what the component wants to be. You should use to determine whether the object is truly active in the scene. */
    var Enabled(default,default):Bool;
    /** True if this Component is enabled, and all of its ancestor GameObjects are enabled */
    var Active(default,never):Bool;
    var IsValid(default,never):Bool;
    var OnComponentEnabled(default,default):system.Action;
    var OnComponentStart(default,default):system.Action;
    var OnComponentUpdate(default,default):system.Action;
    var OnComponentFixedUpdate(default,default):system.Action;
    var OnComponentDisabled(default,default):system.Action;
    var OnComponentDestroy(default,default):system.Action;
    var Tags(default,never):sandbox.ITagSet;
    /** Allows drawing of temporary debug shapes and text in the scene */
    var DebugOverlay(default,never):sandbox.DebugOverlaySystem;
    var Flags(default,default):sandbox.ComponentFlags;
    var Id(default,never):system.Guid;
    /** The local transform of the game object. */
    var LocalTransform(default,default):Transform;
    /** The local position of the game object. */
    var LocalPosition(default,default):Vector3;
    /** The local rotation of the game object. */
    var LocalRotation(default,default):Rotation;
    /** The local scale of the game object. */
    var LocalScale(default,default):Vector3;
    var Network(default,never):sandbox.gameobject.NetworkAccessor;
    /** True if this is a networked object and is owned by another client. This means that we're not controlling this object, so shouldn't try to move it or anything. */
    var IsProxy(default,never):Bool;
    /** The version of the component. Used by . */
    var ComponentVersion(default,never):Int;
    /** The world transform of the game object. */
    var WorldTransform(default,default):Transform;
    /** The world position of the game object. */
    var WorldPosition(default,default):Vector3;
    /** The world rotation of the game object. */
    var WorldRotation(default,default):Rotation;
    /** The world scale of the game object. */
    var WorldScale(default,default):Vector3;
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
