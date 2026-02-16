package sandbox;

@:native("Sandbox.CaseInsensitiveDictionary`1")
extern class CaseInsensitiveDictionary<T> extends system.collections.generic.Dictionary<String,T> {
    overload function new():Void;
    overload function new(capacity:Int):Void;
    overload function new(capacity:Int, comparer:system.collections.generic.IEqualityComparer<String>):Void;
    overload function new(dictionary:system.collections.generic.IDictionary<String,T>):Void;
    overload function new(dictionary:system.collections.generic.IDictionary<String,T>, comparer:system.collections.generic.IEqualityComparer<String>):Void;
    overload function new(comparer:system.collections.generic.IEqualityComparer<String>):Void;
}
