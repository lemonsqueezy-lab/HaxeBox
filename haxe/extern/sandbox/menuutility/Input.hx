package sandbox.menuutility;

/** Allows to menu addon to interact with input configuration */
@:native("Sandbox.MenuUtility.Input")
final extern class Input {
    static function GetBind(group:String, actionName:String, slot:Int, isDefault:Bool):String;
    static function GetCommonInputs():system.collections.generic.IReadOnlyList<sandbox.InputAction>;
    static function ResetBinds(group:String):Void;
    static function SaveBinds(group:String):Void;
    static function SetBind(group:String, actionName:String, buttonName:String, slot:Int):Void;
    /** For binding reasons, get a list of buttons that are currently pressed */
    static function TrapButtons(callback:system.Action1<Array<String>>):Void;
}
