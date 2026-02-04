package sandbox.iachievementlistener;

@:native("Sandbox.IAchievementListener.UnlockDescription")
final extern class UnlockDescription {
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

    var ScoreAdded(default,set):Int;

    private inline function set_ScoreAdded(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.ScoreAdded = {1}", this, __value);
    }

    var TotalPackageScore(default,set):Int;

    private inline function set_TotalPackageScore(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.TotalPackageScore = {1}", this, __value);
    }

    var TotalPlayerScore(default,set):Int;

    private inline function set_TotalPlayerScore(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.TotalPlayerScore = {1}", this, __value);
    }

}
