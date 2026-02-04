package sandbox;

/** A model. */
@:native("Sandbox.Model")
final extern class Model {
    /** Number of animations this model has. */
    var AnimationCount(default,never):Int;
    var AnimationNames(default,never):system.collections.generic.IReadOnlyList<String>;
    /** Get the animgraph this model uses. */
    var AnimGraph(default,never):sandbox.AnimationGraph;
    /** Access to bones of this model. */
    var Attachments(default,never):sandbox.ModelAttachments;
    /** Returns amount of attachment points this model has. */
    var AttachmentCount(default,never):Int;
    /** Access to body parts of this model. */
    var Parts(default,never):sandbox.ModelParts;
    var BodyGroupCount(default,never):Int;
    var DefaultBodyGroupMask(default,never):system.UInt64;
    var BodyParts(default,never):system.collections.generic.IEnumerable<sandbox.model.BodyPart>;
    /** Total bounds of all the meshes. */
    var Bounds(default,never):BBox;
    /** Total bounds of all the physics shapes. */
    var PhysicsBounds(default,never):BBox;
    /** Render view bounds. */
    var RenderBounds(default,never):BBox;
    var IsValid(default,never):Bool;
    /** Whether this model is an error model or invalid or not. */
    var IsError(default,never):Bool;
    /** Name of the model, usually being its file path. */
    var Name(default,never):String;
    /** Whether this model is procedural, i.e. it was created at runtime via . */
    var IsProcedural(default,never):Bool;
    /** Total number of meshes this model is made out of. */
    var MeshCount(default,never):Int;
    /** Trace against the triangles in this mesh */
    var Trace(default,never):sandbox.engine.utility.raytrace.MeshTraceRequest;
    var Data(default,never):sandbox.model.CommonData;
    /** Access to default hitbox set of this model */
    var HitboxSet(default,never):sandbox.HitboxSet;
    /** Number of material groups this model has. */
    var MaterialGroupCount(default,never):Int;
    /** Retrieves an enumerable collection of all Materials on the meshes. This is fast, and cached. The order of these items is the same order used in ModelRenderer.Materials etc */
    var Materials(default,never):system.collections.immutable.ImmutableArray<sandbox.Material>;
    /** Access to bones of this model. */
    var Morphs(default,never):sandbox.ModelMorphs;
    /** Number of morph controllers this model has. */
    var MorphCount(default,never):Int;
    var Physics(default,never):sandbox.PhysicsGroupDescription;
    /** Access to bones of this model. */
    var Bones(default,never):sandbox.BoneCollection;
    /** Number of bones this model has. */
    var BoneCount(default,never):Int;
    /** Returns a static instance, allowing for runtime model creation. */
    static var Builder(default,never):sandbox.ModelBuilder;
    /** A cube model */
    static var Cube(default,never):sandbox.Model;
    /** A sphere model */
    static var Sphere(default,never):sandbox.Model;
    /** A plane model */
    static var Plane(default,never):sandbox.Model;
    /** An error model */
    static var Error(default,never):sandbox.Model;
    /** ID of this resource, */
    @:protected
    var ResourceId(default,null):Int;
    /** Path to this resource. */
    @:protected
    var ResourcePath(default,null):String;
    /** File name of the resource without the extension. */
    @:protected
    var ResourceName(default,null):String;
    /** True if this resource has been changed but the changes aren't written to disk */
    var HasUnsavedChanges(default,never):Bool;
    /** Embedded data for this resource */
    var EmbeddedResource(default,default):Null<sandbox.resources.EmbeddedResource>;
    /** Creates a dictionary of bone names to game objects, where each game object is a bone object in the scene. */
    function CreateBoneObjects(root:sandbox.GameObject):system.collections.generic.Dictionary<sandbox.bonecollection.Bone,sandbox.GameObject>;
    @:protected function Finalize():Void;
    /** Returns name of an animation at given animation index. */
    function GetAnimationName(animationIndex:Int):String;
    /** Retrieves attachment transform based on given attachment index. */
    overload function GetAttachment(index:Int):Null<Transform>;
    overload function GetAttachment(name:String):Null<Transform>;
    /** Returns name of an attachment at given index. */
    function GetAttachmentName(index:Int):String;
    function GetBaseVertex(drawcall:Int):Int;
    /** Returns name of a bone at given bone index. */
    function GetBoneName(boneIndex:Int):String;
    /** Returns the id of given bone's parent bone. */
    function GetBoneParent(boneIndex:Int):Int;
    /** Returns transform of given bone at bind position. */
    overload function GetBoneTransform(boneIndex:Int):Transform;
    overload function GetBoneTransform(bone:String):Transform;
    /** Internal function used to get a list of break commands the model has. */
    function GetBreakCommands():system.collections.generic.Dictionary<String,Array<String>>;
    /** Extracts data from model based on the given type's ModelDoc.GameDataAttribute. */
    function GetData<T>():T;
    function GetIndexCount(drawcall:Int):Int;
    function GetIndexStart(drawcall:Int):Int;
    /** Experimental! */
    function GetIndices():Array<UInt>;
    /** Retrieves the index of a material group given its name. */
    function GetMaterialGroupIndex(groupIndex:String):Int;
    /** Returns name of a material group at given group index. */
    function GetMaterialGroupName(groupIndex:Int):String;
    /** Retrieves an enumerable collection of Materials belonging to a specified group. */
    overload function GetMaterials(groupIndex:Int):system.collections.generic.IEnumerable<sandbox.Material>;
    overload function GetMaterials(groupName:String):system.collections.generic.IEnumerable<sandbox.Material>;
    /** Returns name of a morph controller at given index. */
    function GetMorphName(morph:Int):String;
    /** Experimental! */
    function GetVertices():Array<sandbox.Vertex>;
    /** Get morph weight for viseme. */
    function GetVisemeMorph(viseme:String, morph:Int):Single;
    /** Tests if this model has generic data based on given type's ModelDoc.GameDataAttribute. This will be faster than testing this via GetData<>() */
    function HasData<T>():Bool;
    /** Load a model by file path. */
    static function Load(filename:String):sandbox.Model;
    /** Load a model by file path. */
    static function LoadAsync(filename:String):system.threading.tasks.Task1<sandbox.Model>;
    overload function TryGetData<T>(data:T):Bool;
    overload function TryGetData(t:cs.system.Type, data:cs.system.Object):Bool;
}
