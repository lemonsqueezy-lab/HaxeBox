package sandbox.surface;

@:native("Sandbox.Surface.ScrapeEffectData")
final extern class ScrapeEffectData {
    function new():Void;
    /** Similar to friction but only affects whether a scrape is rough or smooth. */
    var RoughnessFactor(default,set):Single;

    private inline function set_RoughnessFactor(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.RoughnessFactor = {1}", this, __value);
    }

    /** Surface roughness greater than this results in rough scrapes. */
    var RoughThreshold(default,set):Single;

    private inline function set_RoughThreshold(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.RoughThreshold = {1}", this, __value);
    }

    /** Spawn one of these particle effects during a smooth scrape. */
    var SmoothParticles(default,set):system.collections.generic.List<String>;

    private inline function set_SmoothParticles(value:system.collections.generic.List<String>):system.collections.generic.List<String> {
        var __value:system.collections.generic.List<String> = cast value;
        return untyped __cs__("{0}.SmoothParticles = {1}", this, __value);
    }

    /** Spawn one of these particle effects during a rough scrape. */
    var RoughParticles(default,set):system.collections.generic.List<String>;

    private inline function set_RoughParticles(value:system.collections.generic.List<String>):system.collections.generic.List<String> {
        var __value:system.collections.generic.List<String> = cast value;
        return untyped __cs__("{0}.RoughParticles = {1}", this, __value);
    }

    /** Use one of these particles during a smooth scrape. */
    var SmoothDecal(default,set):system.collections.generic.List<String>;

    private inline function set_SmoothDecal(value:system.collections.generic.List<String>):system.collections.generic.List<String> {
        var __value:system.collections.generic.List<String> = cast value;
        return untyped __cs__("{0}.SmoothDecal = {1}", this, __value);
    }

    /** Use one of these particles during a rough scrape. */
    var RoughDecal(default,set):system.collections.generic.List<String>;

    private inline function set_RoughDecal(value:system.collections.generic.List<String>):system.collections.generic.List<String> {
        var __value:system.collections.generic.List<String> = cast value;
        return untyped __cs__("{0}.RoughDecal = {1}", this, __value);
    }

}
