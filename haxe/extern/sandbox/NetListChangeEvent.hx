package sandbox;

@:native("Sandbox.NetListChangeEvent`1")
final extern class NetListChangeEvent<T> {
    var Type(default,set):system.collections.specialized.NotifyCollectionChangedAction;

    private inline function set_Type(value:system.collections.specialized.NotifyCollectionChangedAction):system.collections.specialized.NotifyCollectionChangedAction {
        var __value:system.collections.specialized.NotifyCollectionChangedAction = cast value;
        return untyped __cs__("{0}.Type = {1}", this, __value);
    }

    var Index(default,set):Int;

    private inline function set_Index(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Index = {1}", this, __value);
    }

    var MovedIndex(default,set):Int;

    private inline function set_MovedIndex(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.MovedIndex = {1}", this, __value);
    }

    var NewValue(default,set):T;

    private inline function set_NewValue(value:T):T {
        var __value:T = cast value;
        return untyped __cs__("{0}.NewValue = {1}", this, __value);
    }

    var OldValue(default,set):T;

    private inline function set_OldValue(value:T):T {
        var __value:T = cast value;
        return untyped __cs__("{0}.OldValue = {1}", this, __value);
    }

}
