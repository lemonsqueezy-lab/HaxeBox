package sandbox.ui;

/** Everything the style system needs to work out a style */
@:native("Sandbox.UI.IStyleTarget")
extern class IStyleTarget {
    var ElementName(default,never):String;
    var Id(default,never):String;
    var PseudoClass(default,never):sandbox.ui.PseudoClass;
    var Parent(default,never):sandbox.ui.IStyleTarget;
    var Children(default,never):system.collections.generic.IReadOnlyList<sandbox.ui.IStyleTarget>;
    var SiblingIndex(default,never):Int;
    function HasClasses(classes:Array<String>):Bool;
}
