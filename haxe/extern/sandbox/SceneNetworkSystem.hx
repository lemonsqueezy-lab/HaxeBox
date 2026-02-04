package sandbox;

/** This is created and referenced by the network system, as a way to route. */
@:native("Sandbox.SceneNetworkSystem")
extern class SceneNetworkSystem {
    function AcceptConnection(channel:sandbox.Connection, reason:String):Bool;
    function Dispose():Void;
    function GetMountedVPKs(source:sandbox.Connection, msg:sandbox.network.MountedVPKsResponse):Void;
    function GetSnapshot(source:sandbox.Connection, msg:sandbox.network.SnapshotMsg):Void;
    /** Asynchronously load and mount any VPKs from the provided server response. */
    function MountVPKs(source:sandbox.Connection, msg:sandbox.network.MountedVPKsResponse):system.threading.tasks.Task;
    function OnBecameHost(previousHost:sandbox.Connection):Void;
    function OnConnected(client:sandbox.Connection):Void;
    function OnHostChanged(previousHost:sandbox.Connection, newHost:sandbox.Connection):Void;
    function OnInitialize():Void;
    function OnJoined(client:sandbox.Connection):Void;
    function OnLeave(client:sandbox.Connection):Void;
    function Push():system.IDisposable;
    /** We have received a snapshot of the world. */
    function SetSnapshotAsync(msg:sandbox.network.SnapshotMsg):system.threading.tasks.Task;
    @:protected function Tick():Void;
    @:protected function WorkoutMapName():String;
}
