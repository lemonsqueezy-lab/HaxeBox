package sandbox.rendering;

/** Represents a sampler state used to control how textures are sampled in shaders. Example usage: SamplerState mySampler < Attribute("sampler"); >; C# binding: var sampler = new SamplerState { Filter = FilterMode.Trilinear, AddressModeU = TextureAddressMode.Wrap, AddressModeV = TextureAddressMode.Wrap, AddressModeW = TextureAddressMode.Clamp, MaxAnisotropy = 4 }; Graphics.Attributes.Set("sampler", sampler); */
@:native("Sandbox.Rendering.SamplerState")
final extern class SamplerState {
    function new():Void;
    /** The texture filtering mode used for sampling (e.g., point, bilinear, trilinear). */
    var Filter(default,set):sandbox.rendering.FilterMode;

    private inline function set_Filter(value:sandbox.rendering.FilterMode):sandbox.rendering.FilterMode {
        var __value:sandbox.rendering.FilterMode = cast value;
        return untyped __cs__("{0}.Filter = {1}", this, __value);
    }

    /** The addressing mode used for the U (X) texture coordinate. */
    var AddressModeU(default,set):sandbox.rendering.TextureAddressMode;

    private inline function set_AddressModeU(value:sandbox.rendering.TextureAddressMode):sandbox.rendering.TextureAddressMode {
        var __value:sandbox.rendering.TextureAddressMode = cast value;
        return untyped __cs__("{0}.AddressModeU = {1}", this, __value);
    }

    /** The addressing mode used for the V texture coordinate. */
    var AddressModeV(default,set):sandbox.rendering.TextureAddressMode;

    private inline function set_AddressModeV(value:sandbox.rendering.TextureAddressMode):sandbox.rendering.TextureAddressMode {
        var __value:sandbox.rendering.TextureAddressMode = cast value;
        return untyped __cs__("{0}.AddressModeV = {1}", this, __value);
    }

    /** The addressing mode used for the W texture coordinate. */
    var AddressModeW(default,set):sandbox.rendering.TextureAddressMode;

    private inline function set_AddressModeW(value:sandbox.rendering.TextureAddressMode):sandbox.rendering.TextureAddressMode {
        var __value:sandbox.rendering.TextureAddressMode = cast value;
        return untyped __cs__("{0}.AddressModeW = {1}", this, __value);
    }

    /** The bias applied to the calculated mip level during texture sampling. Positive values make textures appear blurrier; negative values sharpen. */
    var MipLodBias(default,set):Single;

    private inline function set_MipLodBias(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.MipLodBias = {1}", this, __value);
    }

    /** The maximum anisotropy level used for anisotropic filtering. Higher values improve texture quality at oblique viewing angles. */
    var MaxAnisotropy(default,set):Int;

    private inline function set_MaxAnisotropy(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.MaxAnisotropy = {1}", this, __value);
    }

    /** Border color to use if is specified for AddressU, AddressV, or AddressW. */
    var BorderColor(default,set):Color;

    private inline function set_BorderColor(value:Color):Color {
        var __value:Color = cast value;
        return untyped __cs__("{0}.BorderColor = {1}", this, __value);
    }

    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.rendering.SamplerState):Bool;
    function GetHashCode():Int;
    function ToString():String;
}
