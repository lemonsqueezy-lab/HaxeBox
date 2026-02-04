package sandbox;

/** A fast path hotload that patches the existing assemblies IL when applicable */
@:native("Sandbox.ILHotload")
extern class ILHotload {
    function new(name:String):Void;
    /** True if is supported on this platform. */
    var IsSupported(default,never):Bool;
    function Dispose():Void;
    function Replace(baseAssembly:system.reflection.Assembly, oldIlHotloadAssembly:system.reflection.Assembly, newIlHotloadAssembly:system.reflection.Assembly):Bool;
    static function TryFindChangedMethods(baseAsm:system.reflection.Assembly, oldAsm:system.reflection.Assembly, newAsm:system.reflection.Assembly, changedMethods:Array<system.ValueTuple2<system.reflection.MethodBase,system.reflection.MethodBase>>, unexpectedChanges:Array<system.reflection.MemberInfo>, hasSupportedAttribute:Bool):Bool;
    function TryReplaceMethod(source:system.reflection.MethodBase, replace:system.reflection.MethodBase):Bool;
}
