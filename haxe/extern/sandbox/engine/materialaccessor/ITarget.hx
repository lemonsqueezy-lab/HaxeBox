package sandbox.engine.materialaccessor;

/** The target of a MaterialAccessor. This is the object that will be modified when setting or clearing material overrides. */
@:native("Sandbox.Engine.MaterialAccessor.ITarget")
extern class ITarget {
    /** Return true if this target is valid */
    var IsValid(default,never):Bool;
    /** Wipe all overrides */
    function ClearOverrides():Void;
    /** Get the original material, before overrides, matching this index */
    function Get(index:Int):sandbox.Material;
    /** The number of materials on this target */
    function GetMaterialCount():Int;
    /** Set the override material for this index. */
    function SetOverride(index:Int, material:sandbox.Material):Void;
}
