package sandbox;

/** A simple spot light scene object for use in a . */
@:native("Sandbox.SceneSpotLight")
final extern class SceneSpotLight {
    overload function new(world:sandbox.SceneWorld):Void;
    overload function new(world:sandbox.SceneWorld, position:Vector3, color:Color):Void;
    /** The inner cone of the spotlight, in half angle degrees. */
    var ConeInner(default,default):Single;
    /** The outer cone of the spotlight, in half angle degrees */
    var ConeOuter(default,default):Single;
    var FallOff(default,default):Single;
    /** Color and brightness of the light */
    var LightColor(default,default):Color;
    /** Radius of the light in units */
    var Radius(default,default):Single;
    /** The light attenuation constant term */
    var ConstantAttenuation(default,default):Single;
    /** The light attenuation linear term */
    var LinearAttenuation(default,default):Single;
    /** The light attenuation quadratic term */
    var QuadraticAttenuation(default,default):Single;
    /** Get or set the resolution of the shadow map. If this is zero the engine will decide what it should use. */
    var ShadowTextureResolution(default,default):Int;
    /** Enable or disable shadow rendering */
    var ShadowsEnabled(default,default):Bool;
    /** Access the LightCookie - which is a texture that gets drawn over the light */
    var LightCookie(default,default):sandbox.Texture;
    var Shape(default,default):sandbox.scenelight.LightShape;
    var ShapeSize(never,default):Vector2;
    var FogLighting(default,default):sandbox.scenelight.FogLightingMode;
    var FogStrength(default,default):Single;
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
}
