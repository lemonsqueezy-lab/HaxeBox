package sandbox;

/** Draw a material over the screen */
@:native("Sandbox.BlitOverlay")
final extern class BlitOverlay extends sandbox.BasePostProcess<sandbox.BlitOverlay> {
    function new():Void;
    var Blend(default,default):Single;
    var BlendMode(default,default):sandbox.BlendMode;
    var Material(default,default):sandbox.Material;
    var Order(default,default):Int;
    function Render():Void;
}
