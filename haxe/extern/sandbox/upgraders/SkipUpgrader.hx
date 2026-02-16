package sandbox.upgraders;

@:native("Sandbox.Upgraders.SkipUpgrader")
extern class SkipUpgrader extends sandbox.hotload.InstanceUpgrader {
    function new():Void;
    overload function AddSkippedType<T>():Void;
    overload function AddSkippedType(type:cs.system.Type):Void;
    @:protected function OnTryCreateNewInstance(oldInstance:cs.system.Object, newInstance:cs.system.Object):Bool;
    @:protected function OnTryUpgradeInstance(oldInstance:cs.system.Object, newInstance:cs.system.Object, createdElsewhere:Bool):Bool;
    function ShouldProcessType(type:cs.system.Type):Bool;
}
