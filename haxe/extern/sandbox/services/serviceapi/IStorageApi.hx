package sandbox.services.serviceapi;

@:native("Sandbox.Services.ServiceApi.IStorageApi")
extern class IStorageApi {
    function CompleteUpload(guid:String):system.threading.tasks.Task1<String>;
    function Delete(steamid:haxe.Int64, package:String, table:String, key:String):system.threading.tasks.Task;
    function Drop(steamid:haxe.Int64, package:String, table:String):system.threading.tasks.Task;
    function Get(steamid:haxe.Int64, package:String, table:String, key:String):system.threading.tasks.Task1<Null<sandbox.services.StorageEntry>>;
    function Query(steamid:haxe.Int64, package:String, table:String, key:String, take:Int):system.threading.tasks.Task1<Array<sandbox.services.StorageEntry>>;
    function Set(steamid:haxe.Int64, package:String, table:String, key:String, value:String):system.threading.tasks.Task;
    function StartUpload(guid:String):system.threading.tasks.Task1<String>;
    function Wipe(steamid:haxe.Int64, package:String):system.threading.tasks.Task;
}
