package sandbox.services;

@:native("Sandbox.Services.ServerList")
extern class ServerList extends system.collections.generic.List<sandbox.services.serverlist.Entry> {
    function new():Void;
    var IsQuerying(default,never):Bool;
    function AddFilter(key:String, value:String):Void;
    function Dispose():Void;
    @:protected function Finalize():Void;
    function Query():Void;
}
