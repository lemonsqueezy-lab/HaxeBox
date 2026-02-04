package sandbox.services;

/** Player notification */
@:native("Sandbox.Services.Notification")
final extern class Notification {
    function new():Void;
    var Created(default,default):system.DateTimeOffset;
    var Updated(default,default):system.DateTimeOffset;
    var Count(default,default):Int;
    var Read(default,default):Null<system.DateTimeOffset>;
    var NoticeType(default,default):String;
    var Url(default,default):String;
    var Icon(default,default):String;
    var Text(default,default):String;
    var Data(default,default):system.collections.generic.Dictionary<String,cs.system.Object>;
}
