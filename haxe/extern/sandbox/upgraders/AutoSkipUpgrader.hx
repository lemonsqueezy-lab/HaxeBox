package sandbox.upgraders;

/** Instance upgrader that will try to automatically find types are definitely skippable. This upgrader isn't added automatically, you can enable it by calling . */
@:native("Sandbox.Upgraders.AutoSkipUpgrader")
extern class AutoSkipUpgrader extends sandbox.hotload.InstanceUpgrader {
    function new():Void;
    /** The set of types that have been determined to be safe to skip. */
    var SkippedTypes(default,never):system.collections.generic.IEnumerable<cs.system.Type>;
    @:protected function OnClearCache():Void;
    @:protected function OnHotloadStart():Void;
    @:protected function OnInitialize():Void;
    @:protected function OnTryCreateNewInstance(oldInstance:cs.system.Object, newInstance:cs.system.Object):Bool;
    @:protected function OnTryUpgradeInstance(oldInstance:cs.system.Object, newInstance:cs.system.Object, createdElsewhere:Bool):Bool;
    function ShouldProcessType(type:cs.system.Type):Bool;
}
