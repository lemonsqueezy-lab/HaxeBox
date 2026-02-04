package sandbox;

/** An input action defined by a game project. */
@:native("Sandbox.InputAction")
extern class InputAction {
    overload function new():Void;
    overload function new(name:String, keyboardCode:String, gamepadCode:sandbox.GamepadCode, groupName:String, title:String):Void;
    overload function new(other:sandbox.InputAction):Void;
    /** The name of the input action. Used by Input.Down|Pressed|Released. */
    var Name(default,default):String;
    /** A group name for this input when showing in a binding system */
    var GroupName(default,default):String;
    /** A friendly name for this input action when showing in a binding system */
    var Title(default,default):String;
    /** The key or key combo we'll be watching for. */
    var KeyboardCode(default,default):String;
    /** What gamepad button should this action map to? */
    var GamepadCode(default,default):sandbox.GamepadCode;
}
