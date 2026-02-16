package sandbox;

/** Generic point light scene object for use with a . */
@:native("Sandbox.SceneLight")
extern class SceneLight extends sandbox.SceneObject {
    overload function new(sceneWorld:sandbox.SceneWorld):Void;
    overload function new(sceneWorld:sandbox.SceneWorld, position:Vector3, radius:Single, color:Color):Void;
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
}
