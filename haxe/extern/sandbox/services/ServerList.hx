package sandbox.services;

@:native("Sandbox.Services.ServerList")
extern class ServerList {
    function new():Void;
    var IsQuerying(default,never):Bool;
    var Capacity(default,default):Int;
    var Count(default,never):Int;
    var Item(default,default):sandbox.services.serverlist.Entry;
    function AddFilter(key:String, value:String):Void;
    function Dispose():Void;
    @:protected function Finalize():Void;
    function Query():Void;
}
