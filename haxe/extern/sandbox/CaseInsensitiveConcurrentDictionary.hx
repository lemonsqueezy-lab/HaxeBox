package sandbox;

@:native("Sandbox.CaseInsensitiveConcurrentDictionary`1")
extern class CaseInsensitiveConcurrentDictionary<T> {
    overload function new():Void;
    overload function new(concurrencyLevel:Int, capacity:Int):Void;
    overload function new(concurrencyLevel:Int, capacity:Int, comparer:system.collections.generic.IEqualityComparer<String>):Void;
    overload function new(concurrencyLevel:Int, collection:system.collections.generic.IEnumerable<system.collections.generic.KeyValuePair<String,T>>, comparer:system.collections.generic.IEqualityComparer<String>):Void;
    overload function new(collection:system.collections.generic.IEnumerable<system.collections.generic.KeyValuePair<String,T>>):Void;
    overload function new(comparer:system.collections.generic.IEqualityComparer<String>):Void;
    var Item(default,default):T;
    var Comparer(default,never):system.collections.generic.IEqualityComparer<String>;
    var Count(default,never):Int;
    var IsEmpty(default,never):Bool;
    var Keys(default,never):system.collections.generic.ICollection<String>;
    var Values(default,never):system.collections.generic.ICollection<T>;
}
