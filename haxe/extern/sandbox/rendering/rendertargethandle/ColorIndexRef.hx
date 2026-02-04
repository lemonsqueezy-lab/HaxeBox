package sandbox.rendering.rendertargethandle;

@:native("Sandbox.Rendering.RenderTargetHandle.ColorIndexRef")
final extern class ColorIndexRef {
    var Name(default,set):String;

    private inline function set_Name(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Name = {1}", this, __value);
    }

}
