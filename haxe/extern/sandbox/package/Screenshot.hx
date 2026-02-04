package sandbox.package;

@:native("Sandbox.Package.Screenshot")
extern class Screenshot {
    function new():Void;
    var Created(default,default):system.DateTime;
    var Width(default,default):Int;
    var Height(default,default):Int;
    var Url(default,default):String;
    var Thumb(default,default):String;
    /** True if this is a loading screen rather than a regular screenshot */
    var IsVideo(default,default):Bool;
    /** Return the URL of a thumbnail matching this exact size. For caching reasons it's going to be best if we can keep this to round number sizes (256, 512 etc) rather than trying to exact fit. */
    function GetThumbUrl(width:Int, height:Int):String;
}
