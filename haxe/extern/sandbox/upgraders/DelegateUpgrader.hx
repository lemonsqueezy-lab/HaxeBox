package sandbox.upgraders;

@:native("Sandbox.Upgraders.DelegateUpgrader")
extern class DelegateUpgrader {
    function new():Void;
    @:protected
    var DefaultUpgrader(null,never):sandbox.upgraders.DefaultUpgrader;
    @:protected
    var CachedUpgrader(null,never):sandbox.upgraders.CachedUpgrader;
    var IsInitialized(default,never):Bool;
    var TracePaths(default,never):Bool;
    var CurrentPath(default,default):sandbox.hotload.ReferencePath;
    var CurrentSrcField(default,default):system.reflection.FieldInfo;
    var CurrentDstField(default,default):system.reflection.FieldInfo;
    /** A mapping of assembles to swap with new versions. */
    @:protected
    var Swaps(null,never):system.collections.generic.IReadOnlyDictionary<system.reflection.Assembly,system.reflection.Assembly>;
    function GetMatchingLambdaMethod(oldMethod:system.reflection.MethodInfo):system.reflection.MethodInfo;
    static overload function IsCompilerGenerated(methodName:String):Bool;
    static overload function IsCompilerGenerated(type:cs.system.Type):Bool;
    static overload function IsCompilerGenerated(methodRef:mono.cecil.MethodReference):Bool;
    static overload function IsCompilerGenerated(method:system.reflection.MethodInfo):Bool;
    @:protected function OnTryCreateNewInstance(oldInstance:cs.system.Object, newInstance:cs.system.Object):Bool;
    @:protected function OnTryUpgradeInstance(oldInstance:cs.system.Object, newInstance:cs.system.Object, createdElsewhere:Bool):Bool;
    function ShouldProcessType(type:cs.system.Type):Bool;
}
