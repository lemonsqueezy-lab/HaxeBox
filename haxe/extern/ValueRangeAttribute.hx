package;

/** For use with Curves, allows you to define a custom range for the value */
@:native("ValueRangeAttribute")
extern class ValueRangeAttribute extends system.Attribute {
    function new(start:Single, end:Single, canModify:Bool):Void;
    var Min(default,never):Single;
    var Max(default,never):Single;
    var CanModify(default,never):Bool;
}
