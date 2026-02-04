package sandbox;

@:native("Sandbox.TextureCubeBuilder")
final extern class TextureCubeBuilder {
    function new():Void;
    function AsRenderTarget():sandbox.TextureCubeBuilder;
    /** Build and create the actual texture */
    function Finish():sandbox.Texture;
    /** Set whether the texture is an anonymous texture or not */
    function WithAnonymous(isAnonymous:Bool):sandbox.TextureCubeBuilder;
    function WithArrayCount(count:Int):sandbox.TextureCubeBuilder;
    /** Initialize texture with pre-existing texture data */
    overload function WithData(data:Array<Int>):sandbox.TextureCubeBuilder;
    overload function WithData(data:Array<Int>, dataLength:Int):sandbox.TextureCubeBuilder;
    function WithDepthFormat():sandbox.TextureCubeBuilder;
    function WithDynamicUsage():sandbox.TextureCubeBuilder;
    function WithFormat(format:sandbox.ImageFormat):sandbox.TextureCubeBuilder;
    function WithGPUOnlyUsage():sandbox.TextureCubeBuilder;
    function WithMips(mips:Int):sandbox.TextureCubeBuilder;
    function WithMultiSample16X():sandbox.TextureCubeBuilder;
    function WithMultiSample2X():sandbox.TextureCubeBuilder;
    function WithMultiSample4X():sandbox.TextureCubeBuilder;
    function WithMultiSample6X():sandbox.TextureCubeBuilder;
    function WithMultiSample8X():sandbox.TextureCubeBuilder;
    /** Define which how much multisampling the current texture should use */
    function WithMultisample(amount:sandbox.MultisampleAmount):sandbox.TextureCubeBuilder;
    /** Provide a name to identify the texture by */
    function WithName(name:String):sandbox.TextureCubeBuilder;
    function WithScreenFormat():sandbox.TextureCubeBuilder;
    function WithScreenMultiSample():sandbox.TextureCubeBuilder;
    function WithSemiStaticUsage():sandbox.TextureCubeBuilder;
    /** Create texture with a predefined size */
    overload function WithSize(size:Vector2):sandbox.TextureCubeBuilder;
    overload function WithSize(width:Int, height:Int):sandbox.TextureCubeBuilder;
    function WithStaticUsage():sandbox.TextureCubeBuilder;
    function WithUAVBinding():sandbox.TextureCubeBuilder;
}
