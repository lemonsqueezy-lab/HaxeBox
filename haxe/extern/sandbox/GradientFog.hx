package sandbox;

/** Adds a gradient fog to the world */
@:native("Sandbox.GradientFog")
extern class GradientFog extends sandbox.Component {
    function new():Void;
    var Color(default,default):Color;
    var Height(default,default):Single;
    var VerticalFalloffExponent(default,default):Single;
    var StartDistance(default,default):Single;
    var EndDistance(default,default):Single;
    var FalloffExponent(default,default):Single;
    @:protected function OnPreRender():Void;
}
