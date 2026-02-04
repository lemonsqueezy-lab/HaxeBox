package sandbox;

/** A scene object which is used to draw lines */
@:native("Sandbox.SceneLineObject")
extern class SceneLineObject {
    function new(sceneWorld:sandbox.SceneWorld):Void;
    var LineTexture(default,default):sandbox.Texture;
    var StartCap(default,default):sandbox.scenelineobject.CapStyle;
    var EndCap(default,default):sandbox.scenelineobject.CapStyle;
    var Face(default,default):sandbox.scenelineobject.FaceMode;
    var Wireframe(default,default):Bool;
    var Lighting(default,default):Bool;
    var Clamped(default,default):Bool;
    var SamplerState(default,default):sandbox.rendering.SamplerState;
    var Smoothness(default,default):Int;
    var Opaque(never,default):Bool;
    /** Number of tessellation subdivisions across the width of each line segment. 1 = no tessellation (just left and right), 2 = one subdivision in the middle, etc. Higher values create smoother curves and more detailed geometry but use more vertices. */
    var TessellationLevel(default,default):Int;
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
    var Material(default,default):sandbox.Material;
    var RenderOverride(default,default):system.Action1<sandbox.SceneObject>;
    var ClipPlane(default,default):sandbox.Plane;
    var ClipPlaneEnabled(default,default):Bool;
    overload function AddLinePoint(pos:Vector3, color:Color, width:Single):Void;
    overload function AddLinePoint(pos:Vector3, color:Color, width:Single, textureCoord:Single):Void;
    overload function AddLinePoint(pos:Vector3, normal:Vector3, color:Color, width:Single, textureCoord:Single):Void;
    function Clear():Void;
    function EndLine():Void;
    function RenderSceneObject():Void;
    function StartLine():Void;
}
