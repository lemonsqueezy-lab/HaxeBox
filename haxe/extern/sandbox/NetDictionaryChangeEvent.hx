package sandbox;

@:native("Sandbox.NetDictionaryChangeEvent`2")
final extern class NetDictionaryChangeEvent<TKey,TValue> {
    var Type(default,set):system.collections.specialized.NotifyCollectionChangedAction;

    private inline function set_Type(value:system.collections.specialized.NotifyCollectionChangedAction):system.collections.specialized.NotifyCollectionChangedAction {
        var __value:system.collections.specialized.NotifyCollectionChangedAction = cast value;
        return untyped __cs__("{0}.Type = {1}", this, __value);
    }

    var Key(default,set):TKey;

    private inline function set_Key(value:TKey):TKey {
        var __value:TKey = cast value;
        return untyped __cs__("{0}.Key = {1}", this, __value);
    }

    var NewValue(default,set):TValue;

    private inline function set_NewValue(value:TValue):TValue {
        var __value:TValue = cast value;
        return untyped __cs__("{0}.NewValue = {1}", this, __value);
    }

    var OldValue(default,set):TValue;

    private inline function set_OldValue(value:TValue):TValue {
        var __value:TValue = cast value;
        return untyped __cs__("{0}.OldValue = {1}", this, __value);
    }

}
