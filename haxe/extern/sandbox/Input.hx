package sandbox;

/** Allows querying of player button presses and other inputs. */
@:native("Sandbox.Input")
final extern class Input {
    /** How many controllers are active right now? */
    static var ControllerCount(default,never):Int;
    /** Whether or not the Virtual Cursor should show when using a controller. Disable this to control the cursor manually. */
    static var EnableVirtualCursor(default,default):Bool;
    /** Was the last button pressed a game controller button? */
    static var UsingController(default,never):Bool;
    /** True if escape was pressed */
    static var EscapePressed(default,default):Bool;
    /** Names of all actions from the current game's input settings. */
    static var ActionNames(default,never):system.collections.generic.IEnumerable<String>;
    /** If the input is suppressed then everything will act like there is no input */
    static var Suppressed(default,default):Bool;
    /** Virtual Reality specific input data. */
    static var VR(default,never):sandbox.vr.VRInput;
    /** Movement delta from the mouse. */
    static var MouseDelta(default,default):Vector2;
    /** The state of the mouse wheel. */
    static var MouseWheel(default,default):Vector2;
    /** True if the mouse cursor is visible (using UI etc) */
    static var MouseCursorVisible(default,never):Bool;
    /** Analog look value from the default input device. This is scaled by Preferences.Sensitivity - so you don't need to scale it afterwards. */
    static var AnalogLook(default,default):Angles;
    /** Analog move value from the default input device. */
    static var AnalogMove(default,default):Vector3;
    /** Current state of the current input device's motion sensor(s) if supported. This is only supported on: Dualshock 4+, Switch Controllers, Steam Controller, Steam Deck. */
    static var MotionData(default,never):sandbox.InputMotionData;
    /** Remove this action, so it's no longer being pressed. */
    static function Clear(action:String):Void;
    /** Clears the current input actions, so that none of them are active. */
    static function ClearActions():Void;
    /** Action is currently pressed down */
    static function Down(action:String, complainOnMissing:Bool):Bool;
    /** Copies all input actions to be used publicly */
    static function GetActions():system.collections.generic.IEnumerable<sandbox.InputAction>;
    /** An analog input, when fetched, is between -1 and 1 (0 being default) */
    static function GetAnalog(analog:sandbox.InputAnalog):Single;
    /** Returns the name of the analog axis bound to this . For example: Input.GetButtonOrigin( InputAnalog.Move ) could return Left Joystick */
    static overload function GetButtonOrigin(analog:sandbox.InputAnalog):String;
    static overload function GetButtonOrigin(name:String, ignoreController:Bool):String;
    /** Get a glyph texture from the controller bound to the action. If no binding is found will return an 'UNBOUND' glyph. */
    static overload function GetGlyph(name:String, size:sandbox.InputGlyphSize, outline:Bool):sandbox.Texture;
    static overload function GetGlyph(name:String, size:sandbox.InputGlyphSize, style:sandbox.GlyphStyle):sandbox.Texture;
    static overload function GetGlyph(analog:sandbox.InputAnalog, size:sandbox.InputGlyphSize, outline:Bool):sandbox.Texture;
    /** Finds the of the given action. */
    static function GetGroupName(action:String):String;
    /** Push a specific player scope to be active */
    static function PlayerScope(index:Int):system.IDisposable;
    /** Action wasn't pressed but now it is */
    static function Pressed(action:String):Bool;
    /** Releases the action, and it won't be active again until it's pressed again. */
    static function ReleaseAction(name:String):Void;
    /** Clears the current input actions, so that none of them are active. Unlike ClearActions this will unpress the buttons, so they won't be active again until they're pressed again. */
    static function ReleaseActions():Void;
    /** Action was pressed but now it isn't */
    static function Released(action:String):Bool;
    static function SetAction(action:String, down:Bool):Void;
    /** Stop all vibration events on the current controller. */
    static function StopAllHaptics():Void;
    /** Trigger haptics based on a predefined . All s are normalized (start at 0, peak at 1). */
    static overload function TriggerHaptics(pattern:sandbox.HapticEffect, frequencyScale:Single, amplitudeScale:Single):Void;
    static overload function TriggerHaptics(pattern:sandbox.HapticEffect, lengthScale:Single, frequencyScale:Single, amplitudeScale:Single):Void;
    static overload function TriggerHaptics(leftMotor:Single, rightMotor:Single, leftTrigger:Single, rightTrigger:Single, duration:Int):Void;
}
