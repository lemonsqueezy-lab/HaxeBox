package sandbox.hotload;

/** Interface to implement a custom object instance upgrade process for types that match a condition. Instances of any derived types will be created and added to a instance that uses on the declaring assembly of the derived type, unless a has been specified. You can configure which order s are queried by using , and / or . */
@:native("Sandbox.Hotload.IInstanceUpgrader")
extern class IInstanceUpgrader {
    var IsInitialized(default,never):Bool;
    function ClearCache():Void;
    function HotloadComplete():Void;
    function HotloadStart():Void;
    function Initialize(hotload:sandbox.Hotload):Void;
    function ShouldProcessType(type:cs.system.Type):Bool;
    function TryCreateNewInstance(oldInstance:cs.system.Object, newInstance:cs.system.Object):Bool;
    function TryUpgradeInstance(oldInstance:cs.system.Object, newInstance:cs.system.Object):Bool;
}
