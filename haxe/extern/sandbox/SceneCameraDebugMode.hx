package sandbox;

@:native("Sandbox.SceneCameraDebugMode")
extern enum abstract SceneCameraDebugMode(Int) {
    var Normal;
    var FullBright;
    var NormalMap;
    var Albedo;
    var Roughness;
    var Diffuse;
    var Reflect;
    var Transmission;
    var ShowUV;
    var ShaderIDColor;
    var ClusteredLightCulling;
    var QuadOverdraw;
    var Overdraw;
    var AmbientOcclusion;
}
