package sandbox.ui;

/** A panel that gets deleted automatically when clicked away from */
@:native("Sandbox.UI.BasePopup")
extern class BasePopup extends sandbox.ui.Panel {
    function new():Void;
    /** Stay open, even when CloseAll popups is called */
    var StayOpen(default,default):Bool;
    static function CloseAll(exceptThisOne:sandbox.ui.Panel):Void;
    function OnDeleted():Void;
}
