package sandbox;

/** Map geometry that can be rendered within a . */
@:native("Sandbox.SceneMap")
final extern class SceneMap {
    /** Create a scene map within a scene world. */
    function new(sceneWorld:sandbox.SceneWorld, map:String):Void;
    /** The scene world this map belongs to. */
    var World(default,never):sandbox.SceneWorld;
    /** Is the map valid. */
    var IsValid(default,never):Bool;
    /** Bounds of the map. */
    var Bounds(default,never):BBox;
    var WorldOrigin(never,default):Vector3;
    /** cs_assault */
    var MapName(default,never):String;
    /** maps/davej/cs_assault */
    var MapFolder(default,never):String;
    /** Create scene map asynchronously for when large maps take time to load. */
    static function CreateAsync(sceneWorld:sandbox.SceneWorld, map:String, cancelToken:system.threading.CancellationToken):system.threading.tasks.Task1<sandbox.SceneMap>;
    /** Delete this scene map. You shouldn't access it anymore. */
    function Delete():Void;
}
