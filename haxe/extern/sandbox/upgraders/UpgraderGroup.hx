package sandbox.upgraders;

/** Used to organize s into groups that update in a particular order. Use to specify which group an upgrader should be added to. */
@:native("Sandbox.Upgraders.UpgraderGroup")
extern class UpgraderGroup {
    var IsInitialized(default,never):Bool;
    var Hotload(default,never):sandbox.Hotload;
    /** Works out which child group to add the given upgrader to, or whether to add it to this group. */
    overload function AddUpgrader(upgrader:sandbox.hotload.IInstanceUpgrader):Void;
    @:protected overload function AddUpgrader(upgrader:sandbox.hotload.IInstanceUpgrader, groupPath:Array<cs.system.Type>, groupPathIndex:Int):Void;
    function ClearCache():Void;
    function HotloadComplete():Void;
    function HotloadStart():Void;
    function Initialize(hotload:sandbox.Hotload):Void;
    function ShouldProcessType(type:cs.system.Type):Bool;
    function TryCreateNewInstance(oldInstance:cs.system.Object, newInstance:cs.system.Object):Bool;
    function TryUpgradeInstance(oldInstance:cs.system.Object, newInstance:cs.system.Object):Bool;
}
