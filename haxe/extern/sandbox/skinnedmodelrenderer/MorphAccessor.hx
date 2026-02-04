package sandbox.skinnedmodelrenderer;

@:native("Sandbox.SkinnedModelRenderer.MorphAccessor")
final extern class MorphAccessor {
    var Names(default,never):Array<String>;
    /** Clear this value, don't override it */
    function Clear(name:String):Void;
    /** Returns true if we have this value overridden (set). False means its value is likely being driven by animation etc. */
    function ContainsOverride(name:String):Bool;
    /** Get this value */
    function Get(name:String):Single;
    /** Set this value */
    function Set(name:String, f:Single):Void;
}
