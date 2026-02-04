package sandbox.ui;

/** Handles the storage, progression and application of CSS transitions for a single . */
@:native("Sandbox.UI.Transitions")
final extern class Transitions {
    /** Whether there are any active CSS transitions. */
    var HasAny(default,never):Bool;
    var Entries(default,default):system.collections.generic.List<sandbox.ui.transitions.Entry>;
}
