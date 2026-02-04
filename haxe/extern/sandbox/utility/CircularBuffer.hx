package sandbox.utility;

@:native("Sandbox.Utility.CircularBuffer`1")
extern class CircularBuffer<T> {
    overload function new(capacity:Int):Void;
    overload function new(capacity:Int, items:Array<T>):Void;
    var Capacity(default,never):Int;
    var IsFull(default,never):Bool;
    var IsEmpty(default,never):Bool;
    var Size(default,never):Int;
    var Item(default,default):T;
    function Back():T;
    function Clear():Void;
    function Front():T;
    function GetEnumerator():system.collections.generic.IEnumerator<T>;
    function PopBack():Void;
    function PopFront():Void;
    function PushBack(item:T):Void;
    function PushFront(item:T):Void;
    function ToArray():Array<T>;
    function ToArraySegments():system.collections.generic.IEnumerable<system.ArraySegment<T>>;
}
