package sandbox;

@:native("Sandbox.Texture3DBuilder")
final extern class Texture3DBuilder {
    function new():Void;
    /** Build and create the actual texture */
    function Finish():sandbox.Texture;
    /** Set whether the texture is an anonymous texture or not */
    function WithAnonymous(isAnonymous:Bool):sandbox.Texture3DBuilder;
    /** Initialize texture with pre-existing texture data */
    overload function WithData(data:Array<Int>):sandbox.Texture3DBuilder;
    overload function WithData(data:Array<Int>, dataLength:Int):sandbox.Texture3DBuilder;
    function WithDepthFormat():sandbox.Texture3DBuilder;
    function WithDynamicUsage():sandbox.Texture3DBuilder;
    function WithFormat(format:sandbox.ImageFormat):sandbox.Texture3DBuilder;
    function WithGPUOnlyUsage():sandbox.Texture3DBuilder;
    function WithMips(mips:Int):sandbox.Texture3DBuilder;
    function WithMultiSample16X():sandbox.Texture3DBuilder;
    function WithMultiSample2X():sandbox.Texture3DBuilder;
    function WithMultiSample4X():sandbox.Texture3DBuilder;
    function WithMultiSample6X():sandbox.Texture3DBuilder;
    function WithMultiSample8X():sandbox.Texture3DBuilder;
    /** Define which how much multisampling the current texture should use */
    function WithMultisample(amount:sandbox.MultisampleAmount):sandbox.Texture3DBuilder;
    /** Provide a name to identify the texture by */
    function WithName(name:String):sandbox.Texture3DBuilder;
    function WithScreenFormat():sandbox.Texture3DBuilder;
    function WithScreenMultiSample():sandbox.Texture3DBuilder;
    function WithSemiStaticUsage():sandbox.Texture3DBuilder;
    /** Create texture with a predefined size */
    overload function WithSize(size:Vector3):sandbox.Texture3DBuilder;
    overload function WithSize(width:Int, height:Int, depth:Int):sandbox.Texture3DBuilder;
    function WithStaticUsage():sandbox.Texture3DBuilder;
    function WithUAVBinding():sandbox.Texture3DBuilder;
}
