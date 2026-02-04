package sandbox.rendering;

/** A render target handle used with CommandLists */
@:native("Sandbox.Rendering.RenderTargetHandle")
final extern class RenderTargetHandle {
    var Name(default,set):String;

    private inline function set_Name(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Name = {1}", this, __value);
    }

    /** Reference to the color texture of this target */
    var ColorTexture(default,never):sandbox.rendering.rendertargethandle.ColorTextureRef;
    /** Reference to the index of the color texture of this target */
    var ColorIndex(default,never):sandbox.rendering.rendertargethandle.ColorIndexRef;
    /** Reference to the size of the texture */
    var Size(default,never):sandbox.rendering.rendertargethandle.SizeHandle;
}
