package sandbox.terrain;

/** Information about terrain materials at a specific position */
@:native("Sandbox.Terrain.TerrainMaterialInfo")
final extern class TerrainMaterialInfo {
    /** The base (primary) material index at this position */
    var BaseTextureId(default,set):Int;

    private inline function set_BaseTextureId(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.BaseTextureId = {1}", this, __value);
    }

    /** The overlay (secondary) material index at this position */
    var OverlayTextureId(default,set):Int;

    private inline function set_OverlayTextureId(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.OverlayTextureId = {1}", this, __value);
    }

    /** Blend factor between base and overlay (0-1, where 0 = full base, 1 = full overlay) */
    var BlendFactor(default,set):Single;

    private inline function set_BlendFactor(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.BlendFactor = {1}", this, __value);
    }

    /** Whether this position is marked as a hole */
    var IsHole(default,set):Bool;

    private inline function set_IsHole(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.IsHole = {1}", this, __value);
    }

    /** The base terrain material resource (if available) */
    var BaseMaterial(default,set):sandbox.TerrainMaterial;

    private inline function set_BaseMaterial(value:sandbox.TerrainMaterial):sandbox.TerrainMaterial {
        var __value:sandbox.TerrainMaterial = cast value;
        return untyped __cs__("{0}.BaseMaterial = {1}", this, __value);
    }

    /** The overlay terrain material resource (if available) */
    var OverlayMaterial(default,set):sandbox.TerrainMaterial;

    private inline function set_OverlayMaterial(value:sandbox.TerrainMaterial):sandbox.TerrainMaterial {
        var __value:sandbox.TerrainMaterial = cast value;
        return untyped __cs__("{0}.OverlayMaterial = {1}", this, __value);
    }

    /** Gets the dominant material at this position based on blend factor */
    function GetDominantMaterial():sandbox.TerrainMaterial;
    /** Gets the dominant material index at this position based on blend factor */
    function GetDominantMaterialIndex():Int;
}
