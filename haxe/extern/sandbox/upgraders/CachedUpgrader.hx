package sandbox.upgraders;

@:native("Sandbox.Upgraders.CachedUpgrader")
extern class CachedUpgrader extends sandbox.hotload.InstanceUpgrader {
    function new():Void;
    function AddCachedInstance(inst:cs.system.Object, cached:cs.system.Object):Void;
    @:protected function OnClearCache():Void;
    @:protected function OnTryCreateNewInstance(oldInstance:cs.system.Object, newInstance:cs.system.Object):Bool;
    @:protected function OnTryUpgradeInstance(oldInstance:cs.system.Object, newInstance:cs.system.Object, createdElsewhere:Bool):Bool;
    function ShouldProcessType(type:cs.system.Type):Bool;
    function TryGetCachedInstance(inst:cs.system.Object, cached:cs.system.Object):Bool;
}
