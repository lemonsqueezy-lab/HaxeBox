package sandbox.services;

@:native("Sandbox.Services.Screenshot")
extern class Screenshot {
    function new():Void;
    var Created(default,default):system.DateTime;
    var Width(default,default):Int;
    var Height(default,default):Int;
    var Url(default,default):String;
    var Thumb(default,default):String;
    var IsVideo(default,default):Bool;
    function GetThumb(width:Single):String;
}
