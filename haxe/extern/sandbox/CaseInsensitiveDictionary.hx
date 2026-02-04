package sandbox;

@:native("Sandbox.CaseInsensitiveDictionary`1")
extern class CaseInsensitiveDictionary<T> {
    overload function new():Void;
    overload function new(capacity:Int):Void;
    overload function new(capacity:Int, comparer:system.collections.generic.IEqualityComparer<String>):Void;
    overload function new(dictionary:system.collections.generic.IDictionary<String,T>):Void;
    overload function new(dictionary:system.collections.generic.IDictionary<String,T>, comparer:system.collections.generic.IEqualityComparer<String>):Void;
    overload function new(comparer:system.collections.generic.IEqualityComparer<String>):Void;
    var Comparer(default,never):system.collections.generic.IEqualityComparer<String>;
    var Count(default,never):Int;
    var Capacity(default,never):Int;
    var Keys(default,never):system.collections.generic.Dictionary<String,T>;
    var Values(default,never):system.collections.generic.Dictionary<String,T>;
    var Item(default,default):T;
}
