package sandbox.network.networktable;

@:native("Sandbox.Network.NetworkTable.Entry")
extern class Entry {
    function new():Void;
    var TargetType(default,default):cs.system.Type;
    var DebugName(default,default):String;
    var NeedsQuery(default,default):Bool;
    var ControlCondition(default,default):system.Func2<sandbox.Connection,Bool>;
    var GetValue(default,default):system.Func1<cs.system.Object>;
    var SetValue(default,default):system.Action1<cs.system.Object>;
    var HashCodeValue(default,default):Int;
    var IsSerializerType(default,default):Bool;
    var IsDeltaSnapshotType(default,default):Bool;
    var IsReliableType(default,default):Bool;
    var IsDirty(default,default):Bool;
    var Serialized(default,default):Array<Int>;
    var Initialized(default,default):Bool;
    var Slot(default,default):Int;
    /** Whether we (our local ) have control of this entry. */
    overload function HasControl():Bool;
    overload function HasControl(c:sandbox.Connection):Bool;
}
