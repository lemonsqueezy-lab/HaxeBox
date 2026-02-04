package sandbox;

@:native("Sandbox.Map")
final extern class Map {
    function new(mapName:String, loader:sandbox.MapLoader):Void;
    /** The world physics objects */
    var PhysicsGroup(default,never):sandbox.PhysicsGroup;
    /** The world geometry; */
    var SceneMap(default,never):sandbox.SceneMap;
    static function CreateAsync(mapName:String, loader:sandbox.MapLoader, cancelToken:system.threading.CancellationToken):system.threading.tasks.Task1<sandbox.Map>;
    function Delete():Void;
}
