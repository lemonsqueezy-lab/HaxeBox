package sandbox.services;

@:native("Sandbox.Services.PackageReviewList")
extern class PackageReviewList {
    function new():Void;
    var Count(default,default):Int;
    var Skip(default,default):Int;
    var Take(default,default):Int;
    var Entries(default,default):system.collections.generic.List<sandbox.services.PackageReviewDto>;
}
