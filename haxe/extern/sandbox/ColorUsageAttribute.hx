package sandbox;

/** When applied to a Color property, allows you to specify whether the color should have an alpha channel and/or be in HDR. */
@:native("Sandbox.ColorUsageAttribute")
final extern class ColorUsageAttribute {
    function new(hasAlpha:Bool, isHDR:Bool):Void;
    var HasAlpha(default,default):Bool;
    var IsHDR(default,default):Bool;
    var TypeId(default,never):cs.system.Object;
}
