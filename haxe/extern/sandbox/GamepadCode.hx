package sandbox;

/** Game controller codes, driven from SDL. */
@:native("Sandbox.GamepadCode")
extern enum abstract GamepadCode(Int) {
    var None;
    var A;
    var B;
    var X;
    var Y;
    var SwitchLeftMenu;
    var Guide;
    var SwitchRightMenu;
    var LeftJoystickButton;
    var RightJoystickButton;
    var SwitchLeftBumper;
    var SwitchRightBumper;
    var DpadNorth;
    var DpadSouth;
    var DpadWest;
    var DpadEast;
    var Misc1;
    var Paddle1;
    var Paddle2;
    var Paddle3;
    var Paddle4;
    var Touchpad;
    var BUTTONS_MAX;
    var LeftTrigger;
    var RightTrigger;
}
