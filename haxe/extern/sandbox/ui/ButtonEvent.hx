package sandbox.ui;

/** Keyboard (and mouse) key press . */
@:native("Sandbox.UI.ButtonEvent")
extern class ButtonEvent {
    @:protected
    var EqualityContract(null,never):cs.system.Type;
    /** The button that triggered the event. */
    var Button(default,never):String;
    /** Whether the button was pressed in, or release. */
    var Pressed(default,never):Bool;
    var VirtualKey(default,never):Int;
    /** The keyboard modifier keys that were held down at the moment the event triggered. */
    var KeyboardModifiers(default,never):sandbox.KeyboardModifiers;
    /** Whether Shift key was being held down at the time of the event. */
    var HasShift(default,never):Bool;
    /** Whether Control key was being held down at the time of the event. */
    var HasCtrl(default,never):Bool;
    /** Whether Alt key was being held down at the time of the event. */
    var HasAlt(default,never):Bool;
    /** Set to to prevent the event from propagating to the parent panel. */
    var StopPropagation(default,default):Bool;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.ui.ButtonEvent):Bool;
    function GetHashCode():Int;
    @:protected function PrintMembers(builder:system.text.StringBuilder):Bool;
    function ToString():String;
}
