package sandbox;

/** Applies a depth of field effect to the camera */
@:native("Sandbox.DepthOfField")
final extern class DepthOfField extends sandbox.BasePostProcess<sandbox.DepthOfField> {
    function new():Void;
    /** How blurry to make stuff that isn't in focus. */
    var BlurSize(default,default):Single;
    /** How far away from the camera to focus in world units. */
    var FocalDistance(default,default):Single;
    /** This modulates how far is the blur to the image. */
    var FocusRange(default,default):Single;
    /** Should we blur what's ahead the focal point towards us? */
    var FrontBlur(default,default):Bool;
    /** Should we blur what's behind the focal point? */
    var BackBlur(default,default):Bool;
    function Render():Void;
}
