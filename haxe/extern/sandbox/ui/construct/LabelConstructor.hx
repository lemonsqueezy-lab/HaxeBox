package sandbox.ui.construct;

@:native("Sandbox.UI.Construct.LabelConstructor")
final extern class LabelConstructor {
    /** Create a simple text label with given text and CSS classname. */
    static function Label(self:sandbox.ui.construct.PanelCreator, text:String, classname:String):sandbox.ui.Label;
}
