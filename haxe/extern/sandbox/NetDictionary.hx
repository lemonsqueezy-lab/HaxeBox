package sandbox;

@:native("Sandbox.NetDictionary`2")
final extern class NetDictionary<TKey,TValue> {
    function new():Void;
    var Values(default,never):system.collections.generic.ICollection<TValue>;
    var Keys(default,never):system.collections.generic.ICollection<TKey>;
    var Count(default,never):Int;
    var Item(default,default):TValue;
    var OnChanged(default,default):system.Action1<sandbox.NetDictionaryChangeEvent<TKey,TValue>>;
    overload function Add(item:system.collections.generic.KeyValuePair<TKey,TValue>):Void;
    overload function Add(key:TKey, value:TValue):Void;
    function Clear():Void;
    function Contains(item:system.collections.generic.KeyValuePair<TKey,TValue>):Bool;
    function ContainsKey(key:TKey):Bool;
    function CopyTo(array:Array<system.collections.generic.KeyValuePair<TKey,TValue>>, arrayIndex:Int):Void;
    function Dispose():Void;
    function GetEnumerator():system.collections.generic.IEnumerator<system.collections.generic.KeyValuePair<TKey,TValue>>;
    overload function Remove(key:TKey):Bool;
    overload function Remove(item:system.collections.generic.KeyValuePair<TKey,TValue>):Bool;
    function TryGetValue(key:TKey, value:TValue):Bool;
}
