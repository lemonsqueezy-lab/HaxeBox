package sandbox.upgraders;

/** This upgrader will use reflection to go through each field of a new instance, and populate it with an equivalent value found from the old instance. For newly-added fields, it attempts to determine a default value from the constructor of the type. */
@:native("Sandbox.Upgraders.DefaultUpgrader")
extern class DefaultUpgrader {
    function new():Void;
    static var BackingFieldRegex(default,never):system.text.regularexpressions.Regex;
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
    @:protected function OnClearCache():Void;
    @:protected function OnHotloadComplete():Void;
    @:protected function OnHotloadStart():Void;
    @:protected function OnInitialize():Void;
    @:protected function OnProcessInstance(oldInstance:cs.system.Object, newInstance:cs.system.Object):Int;
    @:protected function OnTryCreateNewInstance(oldInstance:cs.system.Object, newInstance:cs.system.Object):Bool;
    @:protected function OnTryUpgradeInstance(oldInstance:cs.system.Object, newInstance:cs.system.Object, createdElsewhere:Bool):Bool;
    overload function ProcessObjectFields(instance:cs.system.Object):Void;
    overload function ProcessObjectFields(oldInst:cs.system.Object, newInst:cs.system.Object):Void;
    function ShouldProcessType(type:cs.system.Type):Bool;
}
