package sandbox.ui;

/** List of CSS pseudo-classes used by the styling system for hover, active, etc. This acts as a bit-flag. */
@:native("Sandbox.UI.PseudoClass")
extern enum abstract PseudoClass(Int) {
    var None;
    var Unknown;
    var Hover;
    var Active;
    var Focus;
    var Intro;
    var Outro;
    var Empty;
    var FirstChild;
    var LastChild;
    var OnlyChild;
    var Before;
    var After;
}
