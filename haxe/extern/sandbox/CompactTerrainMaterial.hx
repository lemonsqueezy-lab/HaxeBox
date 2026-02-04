package sandbox;

/** Compact terrain material encoding with base/overlay texture blending. Packed format (32-bit uint) */
@:native("Sandbox.CompactTerrainMaterial")
final extern class CompactTerrainMaterial {
    overload function new(baseTextureId:Int, overlayTextureId:Int, blendFactor:Int, isHole:Bool):Void;
    overload function new(packed:UInt):Void;
    /** Base texture ID (0-31) */
    var BaseTextureId(default,set):Int;

    private inline function set_BaseTextureId(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.BaseTextureId = {1}", this, __value);
    }

    /** Overlay texture ID (0-31) */
    var OverlayTextureId(default,set):Int;

    private inline function set_OverlayTextureId(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.OverlayTextureId = {1}", this, __value);
    }

    /** Blend factor between base and overlay (0-255). */
    var BlendFactor(default,set):Int;

    private inline function set_BlendFactor(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.BlendFactor = {1}", this, __value);
    }

    /** Whether this pixel is marked as a hole */
    var IsHole(default,set):Bool;

    private inline function set_IsHole(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.IsHole = {1}", this, __value);
    }

    /** Raw packed value */
    var Packed(default,never):UInt;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.CompactTerrainMaterial):Bool;
    function GetHashCode():Int;
    function ToString():String;
}
