package sandbox.engine;

/** A wrapper to allow the unification of editing materials. This is usually a member on a Component which implements MaterialAccessor.ITarget. */
@:native("Sandbox.Engine.MaterialAccessor")
final extern class MaterialAccessor {
    /** Create a new material accessor for this object. */
    function new(renderer:sandbox.engine.materialaccessor.ITarget):Void;
    /** Total number of material slots */
    var Count(default,never):Int;
    /** Apply to the object. You don't need to call this when setting overrides, as it will automatically apply them to the target when you set them. This is here as a convenience if this object holds data, and you need to apply it to another object that didn't exist when the overrides were originally set, or loaded. */
    function Apply():Void;
    /** Get the original material for the specified index. */
    function GetOriginal(i:Int):sandbox.Material;
    /** Get the override material for this slot. Or null if not set. */
    function GetOverride(i:Int):sandbox.Material;
    /** Does this index have an override material? */
    function HasOverride(i:Int):Bool;
    /** Set an override material for this slot. If the material is null, it will clear the override. */
    function SetOverride(i:Int, material:sandbox.Material):Void;
}
