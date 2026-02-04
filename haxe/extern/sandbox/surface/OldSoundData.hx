package sandbox.surface;

@:native("Sandbox.Surface.OldSoundData")
final extern class OldSoundData {
    /** Left footstep sound. */
    var FootLeft(default,set):String;

    private inline function set_FootLeft(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.FootLeft = {1}", this, __value);
    }

    /** Right footstep sound. */
    var FootRight(default,set):String;

    private inline function set_FootRight(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.FootRight = {1}", this, __value);
    }

    /** Jump sound for this surface. */
    var FootLaunch(default,set):String;

    private inline function set_FootLaunch(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.FootLaunch = {1}", this, __value);
    }

    /** Landing sound for this surface. */
    var FootLand(default,set):String;

    private inline function set_FootLand(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.FootLand = {1}", this, __value);
    }

    /** Bullet impact sound for this surface. */
    var Bullet(default,set):String;

    private inline function set_Bullet(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Bullet = {1}", this, __value);
    }

    /** Hard, high velocity impact sound. */
    var ImpactHard(default,set):String;

    private inline function set_ImpactHard(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.ImpactHard = {1}", this, __value);
    }

    /** Soft, low velocity impact sound. */
    var ImpactSoft(default,set):String;

    private inline function set_ImpactSoft(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.ImpactSoft = {1}", this, __value);
    }

    /** Rough scraping sound when scraping against another surface. */
    var ScrapeRough(default,set):String;

    private inline function set_ScrapeRough(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.ScrapeRough = {1}", this, __value);
    }

    /** Smooth scraping sound when scraping against another surface. */
    var ScrapeSmooth(default,set):String;

    private inline function set_ScrapeSmooth(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.ScrapeSmooth = {1}", this, __value);
    }

}
