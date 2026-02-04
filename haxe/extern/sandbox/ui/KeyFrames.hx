package sandbox.ui;

/** Represents a CSS @keyframes rule. */
@:native("Sandbox.UI.KeyFrames")
extern class KeyFrames {
    function new():Void;
    /** Name of the @keyframes rule. */
    var Name(default,default):String;
    var Blocks(default,default):system.collections.generic.List<sandbox.ui.keyframes.Block>;
}
