package sandbox;

@:native("Sandbox.ResourceSystem")
extern class ResourceSystem {
    function new():Void;
    /** Get a cached resource by its hash. */
    overload function Get<T>(identifier:Int):T;
    overload function Get<T>(filepath:String):T;
    /** Get all cached resources of given type. */
    overload function GetAll<T>():system.collections.generic.IEnumerable<T>;
    overload function GetAll<T>(filepath:String, recursive:Bool):system.collections.generic.IEnumerable<T>;
    function TryGet<T>(filepath:String, resource:T):Bool;
}
