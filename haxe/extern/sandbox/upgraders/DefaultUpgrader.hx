package sandbox.upgraders;

/** This upgrader will use reflection to go through each field of a new instance, and populate it with an equivalent value found from the old instance. For newly-added fields, it attempts to determine a default value from the constructor of the type. */
@:native("Sandbox.Upgraders.DefaultUpgrader")
extern class DefaultUpgrader extends sandbox.hotload.InstanceUpgrader {
    function new():Void;
    static var BackingFieldRegex(default,never):system.text.regularexpressions.Regex;
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
