package sandbox;

@:native("Sandbox.NetworkHelper")
final extern class NetworkHelper extends sandbox.Component {
    function new():Void;
    var StartServer(default,default):Bool;
    var PlayerPrefab(default,default):sandbox.GameObject;
    var SpawnPoints(default,default):system.collections.generic.List<sandbox.GameObject>;
    function OnActive(channel:sandbox.Connection):Void;
    @:protected function OnLoad():system.threading.tasks.Task;
}
