package sandbox.ui.construct;

/** Used for for quick panel creation with certain settings. Other panels types are added via extension methods. */
@:native("Sandbox.UI.Construct.PanelCreator")
final extern class PanelCreator {
    var panel(default,set):sandbox.ui.Panel;

    private inline function set_panel(value:sandbox.ui.Panel):sandbox.ui.Panel {
        var __value:sandbox.ui.Panel = cast value;
        return untyped __cs__("{0}.panel = {1}", this, __value);
    }

    /** Add a new blank panel as a child. */
    overload function Panel():sandbox.ui.Panel;
    overload function Panel(classname:String):sandbox.ui.Panel;
}
