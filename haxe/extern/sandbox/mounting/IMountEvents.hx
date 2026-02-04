package sandbox.mounting;

@:native("Sandbox.Mounting.IMountEvents")
extern class IMountEvents {
    function OnMountDisabled(source:sandbox.mounting.BaseGameMount):Void;
    function OnMountEnabled(source:sandbox.mounting.BaseGameMount):Void;
}
