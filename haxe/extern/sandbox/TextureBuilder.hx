package sandbox;

@:native("Sandbox.TextureBuilder")
final extern class TextureBuilder {
    /** Finish creating the texture. */
    function Create(name:String, anonymous:Bool, data:system.ReadOnlySpan<Int>, dataLength:Int):sandbox.Texture;
    function WithDepth(depth:Int):sandbox.TextureBuilder;
    /** Uses the same depth format as what the screen/framebuffer uses. */
    function WithDepthFormat():sandbox.TextureBuilder;
    /** Provides a hint to the GPU that this texture will be updated regularly. (almost every frame) */
    function WithDynamicUsage():sandbox.TextureBuilder;
    /** The internal texture format to use. */
    function WithFormat(format:sandbox.ImageFormat):sandbox.TextureBuilder;
    /** Specify the texture to ONLY be used on the GPU on not allow CPU access. */
    function WithGPUOnlyUsage():sandbox.TextureBuilder;
    function WithHeight(height:Int):sandbox.TextureBuilder;
    function WithInitialColor(color:Color):sandbox.TextureBuilder;
    function WithMSAA(amount:sandbox.MultisampleAmount):sandbox.TextureBuilder;
    /** Generate amount of mip levels. */
    function WithMips(mips:Null<Int>):sandbox.TextureBuilder;
    /** Sets the texture to use 16x multisampling. */
    function WithMultiSample16X():sandbox.TextureBuilder;
    /** Sets the texture to use 2x multisampling. */
    function WithMultiSample2X():sandbox.TextureBuilder;
    /** Sets the texture to use 4x multisampling. */
    function WithMultiSample4X():sandbox.TextureBuilder;
    /** Sets the texture to use 6x multisampling. */
    function WithMultiSample6X():sandbox.TextureBuilder;
    /** Sets the texture to use 8x multisampling. */
    function WithMultiSample8X():sandbox.TextureBuilder;
    /** Sets the internal texture format to use the same format as the screen/frame buffer. */
    function WithScreenFormat():sandbox.TextureBuilder;
    /** Sets the texture to use the same multisampling as whatever the screen/framebuffer uses */
    function WithScreenMultiSample():sandbox.TextureBuilder;
    /** Provides a hint to the GPU that this texture will only be updated sometimes. */
    function WithSemiStaticUsage():sandbox.TextureBuilder;
    overload function WithSize(size:Vector2):sandbox.TextureBuilder;
    overload function WithSize(width:Int, height:Int):sandbox.TextureBuilder;
    /** Provides a hint to the GPU that this texture will not be modified. */
    function WithStaticUsage():sandbox.TextureBuilder;
    /** Support binding the texture as a Unordered Access View in a compute or pixel shader. This is required for binding a texture within a compute shader. */
    function WithUAVBinding(uav:Bool):sandbox.TextureBuilder;
    function WithWidth(width:Int):sandbox.TextureBuilder;
}
