package sandbox.surface;

@:native("Sandbox.Surface.ImpactEffectData")
final extern class ImpactEffectData {
    /** Spawn one of these particles on impact. */
    var Regular(default,set):system.collections.generic.List<String>;

    private inline function set_Regular(value:system.collections.generic.List<String>):system.collections.generic.List<String> {
        var __value:system.collections.generic.List<String> = cast value;
        return untyped __cs__("{0}.Regular = {1}", this, __value);
    }

    /** Spawn one of these particles when hit by a bullet. */
    var Bullet(default,set):system.collections.generic.List<String>;

    private inline function set_Bullet(value:system.collections.generic.List<String>):system.collections.generic.List<String> {
        var __value:system.collections.generic.List<String> = cast value;
        return untyped __cs__("{0}.Bullet = {1}", this, __value);
    }

    /** Use one of these as the bullet impact decal. */
    var BulletDecal(default,set):system.collections.generic.List<String>;

    private inline function set_BulletDecal(value:system.collections.generic.List<String>):system.collections.generic.List<String> {
        var __value:system.collections.generic.List<String> = cast value;
        return untyped __cs__("{0}.BulletDecal = {1}", this, __value);
    }

    /** Spawn one of these particles on impact. */
    var SoftParticles(default,set):system.collections.generic.List<String>;

    private inline function set_SoftParticles(value:system.collections.generic.List<String>):system.collections.generic.List<String> {
        var __value:system.collections.generic.List<String> = cast value;
        return untyped __cs__("{0}.SoftParticles = {1}", this, __value);
    }

    /** Use one of these as a physics impact decal. */
    var SoftDecal(default,set):system.collections.generic.List<String>;

    private inline function set_SoftDecal(value:system.collections.generic.List<String>):system.collections.generic.List<String> {
        var __value:system.collections.generic.List<String> = cast value;
        return untyped __cs__("{0}.SoftDecal = {1}", this, __value);
    }

    /** Spawn one of these particles on impact. */
    var HardParticles(default,set):system.collections.generic.List<String>;

    private inline function set_HardParticles(value:system.collections.generic.List<String>):system.collections.generic.List<String> {
        var __value:system.collections.generic.List<String> = cast value;
        return untyped __cs__("{0}.HardParticles = {1}", this, __value);
    }

    /** Use one of these as a physics impact decal. */
    var HardDecal(default,set):system.collections.generic.List<String>;

    private inline function set_HardDecal(value:system.collections.generic.List<String>):system.collections.generic.List<String> {
        var __value:system.collections.generic.List<String> = cast value;
        return untyped __cs__("{0}.HardDecal = {1}", this, __value);
    }

}
