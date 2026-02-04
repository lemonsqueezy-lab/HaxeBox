package sandbox.services;

@:native("Sandbox.Services.Player")
extern class Player {
    function new():Void;
    var Id(default,default):haxe.Int64;
    var Name(default,default):String;
    var Url(default,default):String;
    var Avatar(default,never):String;
    var Online(default,default):Bool;
    var Private(default,default):Bool;
    var Score(default,default):Int;
}
