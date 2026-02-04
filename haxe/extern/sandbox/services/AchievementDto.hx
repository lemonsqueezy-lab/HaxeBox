package sandbox.services;

@:native("Sandbox.Services.AchievementDto")
final extern class AchievementDto {
    var Name(default,set):String;

    private inline function set_Name(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Name = {1}", this, __value);
    }

    var Title(default,set):String;

    private inline function set_Title(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Title = {1}", this, __value);
    }

    var Description(default,set):String;

    private inline function set_Description(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Description = {1}", this, __value);
    }

    var Icon(default,set):String;

    private inline function set_Icon(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Icon = {1}", this, __value);
    }

    var Visibility(default,set):sandbox.services.achievementdto.VisibilityModes;

    private inline function set_Visibility(value:sandbox.services.achievementdto.VisibilityModes):sandbox.services.achievementdto.VisibilityModes {
        var __value:sandbox.services.achievementdto.VisibilityModes = cast value;
        return untyped __cs__("{0}.Visibility = {1}", this, __value);
    }

    var SourceStat(default,set):String;

    private inline function set_SourceStat(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.SourceStat = {1}", this, __value);
    }

    var SourceAggregation(default,set):sandbox.services.AggregationType;

    private inline function set_SourceAggregation(value:sandbox.services.AggregationType):sandbox.services.AggregationType {
        var __value:sandbox.services.AggregationType = cast value;
        return untyped __cs__("{0}.SourceAggregation = {1}", this, __value);
    }

    var Min(default,set):Float;

    private inline function set_Min(value:Float):Float {
        var __value:Float = cast value;
        return untyped __cs__("{0}.Min = {1}", this, __value);
    }

    var Max(default,set):Float;

    private inline function set_Max(value:Float):Float {
        var __value:Float = cast value;
        return untyped __cs__("{0}.Max = {1}", this, __value);
    }

    var ShowProgress(default,set):Bool;

    private inline function set_ShowProgress(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.ShowProgress = {1}", this, __value);
    }

    var UnlockMode(default,set):sandbox.services.achievementdto.UnlockModes;

    private inline function set_UnlockMode(value:sandbox.services.achievementdto.UnlockModes):sandbox.services.achievementdto.UnlockModes {
        var __value:sandbox.services.achievementdto.UnlockModes = cast value;
        return untyped __cs__("{0}.UnlockMode = {1}", this, __value);
    }

    var Score(default,set):Int;

    private inline function set_Score(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Score = {1}", this, __value);
    }

    var GlobalUnlocks(default,set):Int;

    private inline function set_GlobalUnlocks(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.GlobalUnlocks = {1}", this, __value);
    }

    var GlobalFraction(default,set):Float;

    private inline function set_GlobalFraction(value:Float):Float {
        var __value:Float = cast value;
        return untyped __cs__("{0}.GlobalFraction = {1}", this, __value);
    }

    var Unlocked(default,set):Null<system.DateTimeOffset>;

    private inline function set_Unlocked(value:Null<system.DateTimeOffset>):Null<system.DateTimeOffset> {
        var __value:Null<system.DateTimeOffset> = cast value;
        return untyped __cs__("{0}.Unlocked = {1}", this, __value);
    }

}
