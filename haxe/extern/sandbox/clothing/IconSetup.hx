package sandbox.clothing;

@:native("Sandbox.Clothing.IconSetup")
final extern class IconSetup {
    var Path(default,set):String;

    private inline function set_Path(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Path = {1}", this, __value);
    }

    var Mode(default,set):sandbox.clothing.iconsetup.IconModes;

    private inline function set_Mode(value:sandbox.clothing.iconsetup.IconModes):sandbox.clothing.iconsetup.IconModes {
        var __value:sandbox.clothing.iconsetup.IconModes = cast value;
        return untyped __cs__("{0}.Mode = {1}", this, __value);
    }

    var PositionOffset(default,set):Vector3;

    private inline function set_PositionOffset(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.PositionOffset = {1}", this, __value);
    }

}
