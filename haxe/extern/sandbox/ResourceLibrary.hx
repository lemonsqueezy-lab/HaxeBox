package sandbox;

/** Keeps a library of all available . */
@:native("Sandbox.ResourceLibrary")
final extern class ResourceLibrary {
    /** Get a cached resource by its hash. */
    static overload function Get<T>(identifier:Int):T;
    static overload function Get<T>(filepath:String):T;
    /** Get all cached resources of given type. */
    static overload function GetAll<T>():system.collections.generic.IEnumerable<T>;
    static overload function GetAll<T>(filepath:String, recursive:Bool):system.collections.generic.IEnumerable<T>;
    /** Render a thumbnail for this resource */
    static function GetThumbnail(path:String, width:Int, height:Int):system.threading.tasks.Task1<sandbox.Bitmap>;
    /** Load a resource by its file path. */
    static function LoadAsync<T>(path:String):system.threading.tasks.Task1<T>;
    static function TryGet<T>(filepath:String, resource:T):Bool;
}
