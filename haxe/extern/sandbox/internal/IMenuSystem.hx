package sandbox.internal;

/** This is how the engine communicates with the menu system */
@:native("Sandbox.Internal.IMenuSystem")
extern class IMenuSystem {
    /** True if we want to force the cursor to be visible and swallow input. This is used for the developer console and loading screens. */
    var ForceCursorVisible(default,never):Bool;
    /** Called to initialize the menu system */
    function Init():Void;
    /** Package closed. Add a toast asking if it was cool or not */
    function OnPackageClosed(package:sandbox.Package):Void;
    /** Show a popup */
    function Popup(type:String, title:String, subtitle:String):Void;
    /** Show a question */
    function Question(message:String, icon:String, yes:system.Action, no:system.Action):Void;
    /** Close down the menu, delete everything */
    function Shutdown():Void;
    /** Called every frame, to let the menu think */
    function Tick():Void;
}
