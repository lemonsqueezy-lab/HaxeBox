package sandbox.ui;

@:native("Sandbox.UI.PanelStyle")
final extern class PanelStyle extends sandbox.ui.Styles {
    /** This style has a ::before element available. This is signalling to the panel system that if we apply this style, we should also create a ::before element. */
    var HasBeforeElement(default,never):Bool;
    /** This style has a ::after element available. This is signalling to the panel system that if we apply this style, we should also create a ::after element. */
    var HasAfterElement(default,never):Bool;
    function Dirty():Void;
    function Set(property:String, value:String):Bool;
    overload function SetBackgroundImage(image:String):Void;
    overload function SetBackgroundImage(texture:sandbox.Texture):Void;
    function SetBackgroundImageAsync(image:String):system.threading.tasks.Task;
    function SetRect(rect:sandbox.Rect):Void;
}
