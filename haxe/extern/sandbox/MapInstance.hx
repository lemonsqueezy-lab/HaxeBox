package sandbox;

/** Allows you to load a map into the Scene. This can be either a vpk or a scene map. */
@:native("Sandbox.MapInstance")
extern class MapInstance extends sandbox.Component {
    function new():Void;
    var MapName(default,default):String;
    var UseMapFromLaunch(default,default):Bool;
    var EnableCollision(default,default):Bool;
    /** True if the map is loaded */
    var IsLoaded(default,never):Bool;
    /** Called when the map has successfully loaded */
    var OnMapLoaded(default,default):system.Action;
    /** Called when the map has been unloaded */
    var OnMapUnloaded(default,default):system.Action;
    /** Get the world bounds of the map */
    var Bounds(default,never):BBox;
    var NoOrigin(default,default):Bool;
    /** Override this to add components to a map object. Only called for map objects that are not implemented. */
    @:protected function OnCreateObject(go:sandbox.GameObject, kv:sandbox.maploader.ObjectEntry):Void;
    @:protected function OnDirty():Void;
    @:protected function OnLoad(context:sandbox.LoadingContext):system.threading.tasks.Task;
    @:protected function OnTagsChanged():Void;
    @:protected function OnUpdate():Void;
    /** Unload the current map. */
    function UnloadMap():Void;
}
