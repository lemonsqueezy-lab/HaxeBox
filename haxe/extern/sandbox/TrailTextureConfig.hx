package sandbox;

/** Defines how a trail is going to be textured. Used by TrailRenderer. */
@:native("Sandbox.TrailTextureConfig")
final extern class TrailTextureConfig {
    function new():Void;
    static var Default(default,never):sandbox.TrailTextureConfig;
    var Texture(default,set):sandbox.Texture;

    private inline function set_Texture(value:sandbox.Texture):sandbox.Texture {
        var __value:sandbox.Texture = cast value;
        return untyped __cs__("{0}.Texture = {1}", this, __value);
    }

    var Material(default,set):sandbox.Material;

    private inline function set_Material(value:sandbox.Material):sandbox.Material {
        var __value:sandbox.Material = cast value;
        return untyped __cs__("{0}.Material = {1}", this, __value);
    }

    var WorldSpace(default,set):Bool;

    private inline function set_WorldSpace(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.WorldSpace = {1}", this, __value);
    }

    var UnitsPerTexture(default,set):Single;

    private inline function set_UnitsPerTexture(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.UnitsPerTexture = {1}", this, __value);
    }

    var Scale(default,set):Single;

    private inline function set_Scale(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.Scale = {1}", this, __value);
    }

    var Offset(default,set):Single;

    private inline function set_Offset(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.Offset = {1}", this, __value);
    }

    var Scroll(default,set):Single;

    private inline function set_Scroll(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.Scroll = {1}", this, __value);
    }

    var FilterMode(default,set):sandbox.rendering.FilterMode;

    private inline function set_FilterMode(value:sandbox.rendering.FilterMode):sandbox.rendering.FilterMode {
        var __value:sandbox.rendering.FilterMode = cast value;
        return untyped __cs__("{0}.FilterMode = {1}", this, __value);
    }

    var TextureAddressMode(default,set):sandbox.rendering.TextureAddressMode;

    private inline function set_TextureAddressMode(value:sandbox.rendering.TextureAddressMode):sandbox.rendering.TextureAddressMode {
        var __value:sandbox.rendering.TextureAddressMode = cast value;
        return untyped __cs__("{0}.TextureAddressMode = {1}", this, __value);
    }

    /** If true the texture will be clamped instead of repeating */
    var Clamp(default,set):Bool;

    private inline function set_Clamp(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.Clamp = {1}", this, __value);
    }

    function DoesMaterialUseLineShader(value:sandbox.Material):Bool;
}
