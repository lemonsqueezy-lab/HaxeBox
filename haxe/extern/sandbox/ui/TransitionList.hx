package sandbox.ui;

/** A list of CSS properties that should transition when changed. Utility to create a transition by comparing the panel style before and after the scope. */
@:native("Sandbox.UI.TransitionList")
extern class TransitionList {
    function new():Void;
    var List(default,default):system.collections.generic.List<sandbox.ui.TransitionDesc>;
    /** Clear the list of CSS transitions. */
    function Clear():Void;
}
