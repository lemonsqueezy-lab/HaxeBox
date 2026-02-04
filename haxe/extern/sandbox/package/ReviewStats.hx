package sandbox.package;

@:native("Sandbox.Package.ReviewStats")
final extern class ReviewStats {
    function new(Total:Int, Score:Single):Void;
    var Total(default,set):Int;

    private inline function set_Total(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Total = {1}", this, __value);
    }

    var Score(default,set):Single;

    private inline function set_Score(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.Score = {1}", this, __value);
    }

    function Deconstruct(Total:Int, Score:Single):Void;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.package.ReviewStats):Bool;
    function GetHashCode():Int;
    function ToString():String;
}
