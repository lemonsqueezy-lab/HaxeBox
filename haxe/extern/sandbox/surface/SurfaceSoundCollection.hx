package sandbox.surface;

/** Holds a dictionary of common sounds associated with a surface. This allows you to pick and choose an appropriate sound. */
@:native("Sandbox.Surface.SurfaceSoundCollection")
final extern class SurfaceSoundCollection {
    /** Left footstep sound. */
    var FootLeft(default,set):sandbox.SoundEvent;

    private inline function set_FootLeft(value:sandbox.SoundEvent):sandbox.SoundEvent {
        var __value:sandbox.SoundEvent = cast value;
        return untyped __cs__("{0}.FootLeft = {1}", this, __value);
    }

    /** Right footstep sound. */
    var FootRight(default,set):sandbox.SoundEvent;

    private inline function set_FootRight(value:sandbox.SoundEvent):sandbox.SoundEvent {
        var __value:sandbox.SoundEvent = cast value;
        return untyped __cs__("{0}.FootRight = {1}", this, __value);
    }

    /** Jump sound for this surface. */
    var FootLaunch(default,set):sandbox.SoundEvent;

    private inline function set_FootLaunch(value:sandbox.SoundEvent):sandbox.SoundEvent {
        var __value:sandbox.SoundEvent = cast value;
        return untyped __cs__("{0}.FootLaunch = {1}", this, __value);
    }

    /** Landing sound for this surface. */
    var FootLand(default,set):sandbox.SoundEvent;

    private inline function set_FootLand(value:sandbox.SoundEvent):sandbox.SoundEvent {
        var __value:sandbox.SoundEvent = cast value;
        return untyped __cs__("{0}.FootLand = {1}", this, __value);
    }

    /** Bullet impact sound for this surface. */
    var Bullet(default,set):sandbox.SoundEvent;

    private inline function set_Bullet(value:sandbox.SoundEvent):sandbox.SoundEvent {
        var __value:sandbox.SoundEvent = cast value;
        return untyped __cs__("{0}.Bullet = {1}", this, __value);
    }

    /** Hard, high velocity impact sound. */
    var ImpactHard(default,set):sandbox.SoundEvent;

    private inline function set_ImpactHard(value:sandbox.SoundEvent):sandbox.SoundEvent {
        var __value:sandbox.SoundEvent = cast value;
        return untyped __cs__("{0}.ImpactHard = {1}", this, __value);
    }

    /** Soft, low velocity impact sound. */
    var ImpactSoft(default,set):sandbox.SoundEvent;

    private inline function set_ImpactSoft(value:sandbox.SoundEvent):sandbox.SoundEvent {
        var __value:sandbox.SoundEvent = cast value;
        return untyped __cs__("{0}.ImpactSoft = {1}", this, __value);
    }

    /** Rough scraping sound when scraping against another surface. */
    var ScrapeRough(default,set):sandbox.SoundEvent;

    private inline function set_ScrapeRough(value:sandbox.SoundEvent):sandbox.SoundEvent {
        var __value:sandbox.SoundEvent = cast value;
        return untyped __cs__("{0}.ScrapeRough = {1}", this, __value);
    }

    /** Smooth scraping sound when scraping against another surface. */
    var ScrapeSmooth(default,set):sandbox.SoundEvent;

    private inline function set_ScrapeSmooth(value:sandbox.SoundEvent):sandbox.SoundEvent {
        var __value:sandbox.SoundEvent = cast value;
        return untyped __cs__("{0}.ScrapeSmooth = {1}", this, __value);
    }

    /** Sound to play when an object made of this breaks */
    var Break(default,set):sandbox.SoundEvent;

    private inline function set_Break(value:sandbox.SoundEvent):sandbox.SoundEvent {
        var __value:sandbox.SoundEvent = cast value;
        return untyped __cs__("{0}.Break = {1}", this, __value);
    }

}
