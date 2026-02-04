package sandbox;

@:native("Sandbox.TextureArrayBuilder")
final extern class TextureArrayBuilder {
    function new():Void;
    /** Build and create the actual texture */
    function Finish():sandbox.Texture;
    /** Set whether the texture is an anonymous texture or not */
    function WithAnonymous(isAnonymous:Bool):sandbox.TextureArrayBuilder;
    /** Create texture array with this many textures */
    function WithCount(count:Int):sandbox.TextureArrayBuilder;
    /** Initialize texture with pre-existing texture data */
    overload function WithData(data:Array<Int>):sandbox.TextureArrayBuilder;
    overload function WithData(data:Array<Int>, dataLength:Int):sandbox.TextureArrayBuilder;
    function WithDepthFormat():sandbox.TextureArrayBuilder;
    function WithDynamicUsage():sandbox.TextureArrayBuilder;
    function WithFormat(format:sandbox.ImageFormat):sandbox.TextureArrayBuilder;
    function WithGPUOnlyUsage():sandbox.TextureArrayBuilder;
    function WithMips(mips:Int):sandbox.TextureArrayBuilder;
    function WithMultiSample16X():sandbox.TextureArrayBuilder;
    function WithMultiSample2X():sandbox.TextureArrayBuilder;
    function WithMultiSample4X():sandbox.TextureArrayBuilder;
    function WithMultiSample6X():sandbox.TextureArrayBuilder;
    function WithMultiSample8X():sandbox.TextureArrayBuilder;
    /** Define which how much multisampling the current texture should use */
    function WithMultisample(amount:sandbox.MultisampleAmount):sandbox.TextureArrayBuilder;
    /** Provide a name to identify the texture by */
    function WithName(name:String):sandbox.TextureArrayBuilder;
    function WithScreenFormat():sandbox.TextureArrayBuilder;
    function WithScreenMultiSample():sandbox.TextureArrayBuilder;
    function WithSemiStaticUsage():sandbox.TextureArrayBuilder;
    /** Create texture with a predefined size */
    function WithSize(width:Int, height:Int):sandbox.TextureArrayBuilder;
    function WithStaticUsage():sandbox.TextureArrayBuilder;
    function WithUAVBinding():sandbox.TextureArrayBuilder;
}
