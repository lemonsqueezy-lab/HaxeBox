package sandbox.scenemaploader;

@:native("Sandbox.SceneMapLoader.TextSceneObject")
extern class TextSceneObject {
    function new(sceneWorld:sandbox.SceneWorld):Void;
    var Text(default,default):String;
    var FontName(default,default):String;
    var FontSize(default,default):Single;
    var FontWeight(default,default):Single;
    var TextFlags(default,default):sandbox.TextFlag;
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
    var RenderOverride(default,default):system.Action1<sandbox.SceneObject>;
    var ClipPlane(default,default):sandbox.Plane;
    var ClipPlaneEnabled(default,default):Bool;
    function RenderSceneObject():Void;
}
