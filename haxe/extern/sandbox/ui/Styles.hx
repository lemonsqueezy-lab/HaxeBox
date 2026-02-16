package sandbox.ui;

/** Represents all supported CSS properties and their currently assigned values. */
@:native("Sandbox.UI.Styles")
extern class Styles extends sandbox.ui.BaseStyles {
    function new():Void;
    /** Whether this style sheet has any transitions that would need to be run. */
    var HasTransitions(default,never):Bool;
    var Padding(never,default):Null<sandbox.ui.Length>;
    var Margin(never,default):Null<sandbox.ui.Length>;
    var BorderWidth(never,default):Null<sandbox.ui.Length>;
    var BorderColor(never,default):Null<Color>;
    var HasBorder(default,never):Bool;
    var Transitions(default,default):sandbox.ui.TransitionList;
    var BoxShadow(default,default):sandbox.ui.ShadowList;
    var TextShadow(default,default):sandbox.ui.ShadowList;
    var FilterDropShadow(default,default):sandbox.ui.ShadowList;
    static var Default(default,never):sandbox.ui.Styles;
    function Add(bs:sandbox.ui.BaseStyles):Void;
    function ApplyAnimation(panel:sandbox.ui.Panel):Bool;
    function ApplyScale(scale:Single):Void;
    /** Creates a matrix based on this style's "transform" and other related properties */
    function BuildTransformMatrix(size:Vector2):Matrix;
    function Dirty():Void;
    function From(bs:sandbox.ui.BaseStyles):Void;
    function FromLerp(from:sandbox.ui.BaseStyles, to:sandbox.ui.BaseStyles, delta:Single):Void;
    function GetInset(size:Vector2):sandbox.ui.Margin;
    function GetOutset(size:Vector2):sandbox.ui.Margin;
    function LerpProperty(name:String, from:sandbox.ui.BaseStyles, to:sandbox.ui.BaseStyles, delta:Single):Void;
    /** Stops the animation. If we have animation vars we'll start again. */
    function ResetAnimation():Void;
    overload function Set(styles:String):Bool;
    overload function Set(property:String, value:String):Bool;
    /** Stop any previous animations and start this one. Make it last this long. */
    function StartAnimation(name:String, duration:Single, iterations:Int, delay:Single, timing:String, direction:String, fillmode:String):Void;
}
