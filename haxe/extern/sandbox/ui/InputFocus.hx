package sandbox.ui;

/** Handles input focus for s. */
@:native("Sandbox.UI.InputFocus")
extern class InputFocus {
    function new():Void;
    /** The panel that currently has input focus. */
    static var Current(default,never):sandbox.ui.Panel;
    /** The panel that will have the input focus next. */
    static var Next(default,never):sandbox.ui.Panel;
    /** Clear keyboard focus */
    static overload function Clear():Bool;
    static overload function Clear(panel:sandbox.ui.Panel):Bool;
    /** Set the focus to this panel (or its nearest ancestor with AcceptsFocus). Note that won't change until the next frame. */
    static function Set(panel:sandbox.ui.Panel):Bool;
}
