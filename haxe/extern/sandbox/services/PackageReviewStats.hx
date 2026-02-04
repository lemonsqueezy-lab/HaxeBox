package sandbox.services;

@:native("Sandbox.Services.PackageReviewStats")
extern class PackageReviewStats {
    function new():Void;
    var Scores(default,default):system.collections.generic.List<sandbox.services.packagereviewstats.Group>;
    var Positive(default,never):sandbox.services.packagereviewstats.Group;
    var Negative(default,never):sandbox.services.packagereviewstats.Group;
    var Promise(default,never):sandbox.services.packagereviewstats.Group;
    var Count(default,never):haxe.Int64;
    function ToPercentage():Single;
}
