package sandbox;

/** Essentially wraps a couple of textures that we're going to render to. The color texture and the depth texture. */
@:native("Sandbox.RenderTarget")
final extern class RenderTarget {
    /** Width of the render target */
    var Width(default,never):Int;
    /** Height of the render target */
    var Height(default,never):Int;
    /** The target colour texture */
    var ColorTarget(default,never):sandbox.Texture;
    /** The target depth texture */
    var DepthTarget(default,never):sandbox.Texture;
    /** Stop using this texture, return it to the pool */
    function Dispose():Void;
    /** Create a render target from these textures */
    static function From(color:sandbox.Texture, depth:sandbox.Texture):sandbox.RenderTarget;
    /** Get a temporary render target. You should dispose the returned handle when you're done to return the textures to the pool. */
    static overload function GetTemporary(sizeFactor:Int, colorFormat:sandbox.ImageFormat, depthFormat:sandbox.ImageFormat, msaa:sandbox.MultisampleAmount, numMips:Int, targetName:String):sandbox.RenderTarget;
    static overload function GetTemporary(width:Int, height:Int, colorFormat:sandbox.ImageFormat, depthFormat:sandbox.ImageFormat, msaa:sandbox.MultisampleAmount, numMips:Int, targetName:String):sandbox.RenderTarget;
    function ToString():String;
}
