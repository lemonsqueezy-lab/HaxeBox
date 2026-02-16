package sandbox;

/** Renders a skybox within a . */
@:native("Sandbox.SceneSkyBox")
extern class SceneSkyBox extends sandbox.SceneObject {
    function new(world:sandbox.SceneWorld, skyMaterial:sandbox.Material):Void;
    /** The skybox material. Typically it should use the "Sky" shader. */
    var SkyMaterial(never,default):sandbox.Material;
    /** Skybox color tint. */
    var SkyTint(default,default):Color;
    /** Controls the skybox specific fog. */
    var FogParams(default,default):sandbox.sceneskybox.FogParamInfo;
    function SetSkyLighting(ConstantSkyLight:Vector3):Void;
}
