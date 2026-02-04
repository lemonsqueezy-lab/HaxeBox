package sandbox.ui;

/** A CSS selector like "Panel.button.red:hover .text" */
@:native("Sandbox.UI.StyleSelector")
final extern class StyleSelector {
    function new():Void;
    var Classes(default,never):Array<String>;
    /** The Id selector - minus the # https://developer.mozilla.org/en-US/docs/Web/CSS/ID_selectors */
    var Id(default,default):String;
    var Score(default,never):Int;
    var Block(default,default):sandbox.ui.StyleBlock;
    var AsString(default,default):String;
    var Element(default,default):String;
    var Flags(default,default):sandbox.ui.PseudoClass;
    var Parent(default,default):sandbox.ui.StyleSelector;
    var Not(default,default):sandbox.ui.StyleSelector;
    var ImmediateParent(default,default):Bool;
    var UniversalSelector(default,default):Bool;
    var AdjacentSibling(default,default):Bool;
    var GeneralSibling(default,default):Bool;
    var AnyOf(default,default):Array<sandbox.ui.StyleSelector>;
    var DecendantOf(default,default):Array<sandbox.ui.StyleSelector>;
    var Has(default,default):Array<sandbox.ui.StyleSelector>;
    var SelfScore(default,default):Int;
    var NthChild(default,default):system.Func2<sandbox.ui.IStyleTarget,Bool>;
    function Finalize(block:sandbox.ui.StyleBlock):Void;
    /** Test whether target passes our selector test. We use forceFlag to do alternate tests for flags like ::before and ::after. It's basically added to the target's pseudo class list for the test. */
    function Test(target:sandbox.ui.IStyleTarget, forceFlag:sandbox.ui.PseudoClass):Bool;
    function TestBroadphase(target:sandbox.ui.IStyleTarget):Bool;
    function TestParent(target:sandbox.ui.IStyleTarget, recusive:Bool):Bool;
}
