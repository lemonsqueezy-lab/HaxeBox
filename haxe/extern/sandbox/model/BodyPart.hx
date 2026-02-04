package sandbox.model;

@:native("Sandbox.Model.BodyPart")
final extern class BodyPart {
    function new():Void;
    var Index(default,never):Int;
    var Name(default,never):String;
    var Mask(default,never):system.UInt64;
    var Choices(default,never):system.collections.generic.IReadOnlyList<sandbox.model.bodypart.Choice>;
}
