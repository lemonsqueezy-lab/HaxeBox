package sandbox;

@:native("Sandbox.Texture2DBuilder")
final extern class Texture2DBuilder {
    function new():Void;
    /** Build and create the actual texture */
    function Finish():sandbox.Texture;
    /** Set whether the texture is an anonymous texture or not */
    function WithAnonymous(isAnonymous:Bool):sandbox.Texture2DBuilder;
    /** Initialize texture with pre-existing texture data. */
    overload function WithData(data:Array<Int>):sandbox.Texture2DBuilder;
    overload function WithData<T>(data:system.ReadOnlySpan<T>):sandbox.Texture2DBuilder;
    overload function WithData(data:Array<Int>, dataLength:Int):sandbox.Texture2DBuilder;
    function WithDepthFormat():sandbox.Texture2DBuilder;
    function WithDynamicUsage():sandbox.Texture2DBuilder;
    function WithFormat(format:sandbox.ImageFormat):sandbox.Texture2DBuilder;
    function WithGPUOnlyUsage():sandbox.Texture2DBuilder;
    overload function WithMips():sandbox.Texture2DBuilder;
    overload function WithMips(mips:Int):sandbox.Texture2DBuilder;
    function WithMultiSample16X():sandbox.Texture2DBuilder;
    function WithMultiSample2X():sandbox.Texture2DBuilder;
    function WithMultiSample4X():sandbox.Texture2DBuilder;
    function WithMultiSample6X():sandbox.Texture2DBuilder;
    function WithMultiSample8X():sandbox.Texture2DBuilder;
    /** Use Multi-Sample Anti Aliasing (MSAA) of given sample count. */
    function WithMultisample(amount:sandbox.MultisampleAmount):sandbox.Texture2DBuilder;
    /** Provide a name to identify the texture by */
    function WithName(name:String):sandbox.Texture2DBuilder;
    function WithScreenFormat():sandbox.Texture2DBuilder;
    function WithScreenMultiSample():sandbox.Texture2DBuilder;
    function WithSemiStaticUsage():sandbox.Texture2DBuilder;
    /** Create texture with a predefined size */
    overload function WithSize(size:Vector2):sandbox.Texture2DBuilder;
    overload function WithSize(width:Int, height:Int):sandbox.Texture2DBuilder;
    function WithStaticUsage():sandbox.Texture2DBuilder;
    function WithUAVBinding():sandbox.Texture2DBuilder;
}
