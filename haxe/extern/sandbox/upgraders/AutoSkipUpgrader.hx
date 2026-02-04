package sandbox.upgraders;

/** Instance upgrader that will try to automatically find types are definitely skippable. This upgrader isn't added automatically, you can enable it by calling . */
@:native("Sandbox.Upgraders.AutoSkipUpgrader")
extern class AutoSkipUpgrader {
    function new():Void;
    /** The set of types that have been determined to be safe to skip. */
    var SkippedTypes(default,never):system.collections.generic.IEnumerable<cs.system.Type>;
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
    @:protected function OnHotloadStart():Void;
    @:protected function OnInitialize():Void;
    @:protected function OnTryCreateNewInstance(oldInstance:cs.system.Object, newInstance:cs.system.Object):Bool;
    @:protected function OnTryUpgradeInstance(oldInstance:cs.system.Object, newInstance:cs.system.Object, createdElsewhere:Bool):Bool;
    function ShouldProcessType(type:cs.system.Type):Bool;
}
