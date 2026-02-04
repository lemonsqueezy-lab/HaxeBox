package sandbox;

@:native("Sandbox.NetList`1")
final extern class NetList<T> {
    function new():Void;
    var Count(default,never):Int;
    var Item(default,default):T;
    var OnChanged(default,default):system.Action1<sandbox.NetListChangeEvent<T>>;
    function Add(value:T):Void;
    function AddRange(collection:system.collections.generic.IEnumerable<T>):Void;
    function Clear():Void;
    function Contains(item:T):Bool;
    function CopyTo(array:Array<T>, arrayIndex:Int):Void;
    function Dispose():Void;
    function GetEnumerator():system.collections.generic.IEnumerator<T>;
    function IndexOf(item:T):Int;
    function Insert(index:Int, value:T):Void;
    function Remove(value:T):Bool;
    function RemoveAt(index:Int):Void;
}
