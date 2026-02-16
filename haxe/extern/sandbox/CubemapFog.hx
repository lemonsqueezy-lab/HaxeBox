package sandbox;

/** Applies a cubemap fog effect to the camera */
@:native("Sandbox.CubemapFog")
extern class CubemapFog extends sandbox.Component {
    function new():Void;
    var Sky(default,default):sandbox.Material;
    var Blur(default,default):Single;
    var StartDistance(default,default):Single;
    var EndDistance(default,default):Single;
    var FalloffExponent(default,default):Single;
    var HeightWidth(default,default):Single;
    var HeightStart(default,default):Single;
    var HeightExponent(default,default):Single;
    var Tint(default,default):Color;
}
