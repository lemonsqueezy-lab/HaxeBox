package sandbox.ui.imagerect;

@:native("Sandbox.UI.ImageRect.Input")
final extern class Input {
    var Image(default,set):sandbox.Texture;

    private inline function set_Image(value:sandbox.Texture):sandbox.Texture {
        var __value:sandbox.Texture = cast value;
        return untyped __cs__("{0}.Image = {1}", this, __value);
    }

    var PanelRect(default,set):sandbox.Rect;

    private inline function set_PanelRect(value:sandbox.Rect):sandbox.Rect {
        var __value:sandbox.Rect = cast value;
        return untyped __cs__("{0}.PanelRect = {1}", this, __value);
    }

    var ImageSizeX(default,set):Null<sandbox.ui.Length>;

    private inline function set_ImageSizeX(value:Null<sandbox.ui.Length>):Null<sandbox.ui.Length> {
        var __value:Null<sandbox.ui.Length> = cast value;
        return untyped __cs__("{0}.ImageSizeX = {1}", this, __value);
    }

    var ImageSizeY(default,set):Null<sandbox.ui.Length>;

    private inline function set_ImageSizeY(value:Null<sandbox.ui.Length>):Null<sandbox.ui.Length> {
        var __value:Null<sandbox.ui.Length> = cast value;
        return untyped __cs__("{0}.ImageSizeY = {1}", this, __value);
    }

    var ImagePositionX(default,set):Null<sandbox.ui.Length>;

    private inline function set_ImagePositionX(value:Null<sandbox.ui.Length>):Null<sandbox.ui.Length> {
        var __value:Null<sandbox.ui.Length> = cast value;
        return untyped __cs__("{0}.ImagePositionX = {1}", this, __value);
    }

    var ImagePositionY(default,set):Null<sandbox.ui.Length>;

    private inline function set_ImagePositionY(value:Null<sandbox.ui.Length>):Null<sandbox.ui.Length> {
        var __value:Null<sandbox.ui.Length> = cast value;
        return untyped __cs__("{0}.ImagePositionY = {1}", this, __value);
    }

    var ScaleToScreen(default,set):Single;

    private inline function set_ScaleToScreen(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.ScaleToScreen = {1}", this, __value);
    }

    var DefaultSize(default,set):sandbox.ui.Length;

    private inline function set_DefaultSize(value:sandbox.ui.Length):sandbox.ui.Length {
        var __value:sandbox.ui.Length = cast value;
        return untyped __cs__("{0}.DefaultSize = {1}", this, __value);
    }

    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.ui.imagerect.Input):Bool;
    function GetHashCode():Int;
    function ToString():String;
}
