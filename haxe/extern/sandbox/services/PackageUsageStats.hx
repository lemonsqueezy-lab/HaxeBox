package sandbox.services;

@:native("Sandbox.Services.PackageUsageStats")
extern class PackageUsageStats {
    function new():Void;
    var Total(default,default):sandbox.services.packageusagestats.Group;
    var Month(default,default):sandbox.services.packageusagestats.Group;
    var Week(default,default):sandbox.services.packageusagestats.Group;
    var Day(default,default):sandbox.services.packageusagestats.Group;
    var UsersNow(default,default):haxe.Int64;
    var Trend(default,default):Float;
}
