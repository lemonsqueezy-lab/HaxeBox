package sandbox.engine.settings.rendersettings;

@:native("Sandbox.Engine.Settings.RenderSettings.VideoDisplayMode")
final extern class VideoDisplayMode {
    var Width(default,set):Int;

    private inline function set_Width(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Width = {1}", this, __value);
    }

    var Height(default,set):Int;

    private inline function set_Height(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Height = {1}", this, __value);
    }

    var RefreshRate(default,set):Single;

    private inline function set_RefreshRate(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.RefreshRate = {1}", this, __value);
    }

    var Format(default,set):sandbox.ImageFormat;

    private inline function set_Format(value:sandbox.ImageFormat):sandbox.ImageFormat {
        var __value:sandbox.ImageFormat = cast value;
        return untyped __cs__("{0}.Format = {1}", this, __value);
    }

}
