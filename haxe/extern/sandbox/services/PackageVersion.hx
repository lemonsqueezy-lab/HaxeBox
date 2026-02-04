package sandbox.services;

@:native("Sandbox.Services.PackageVersion")
extern class PackageVersion {
    function new():Void;
    var Id(default,default):haxe.Int64;
    var Changes(default,default):String;
    var FileCount(default,default):haxe.Int64;
    var TotalSize(default,default):haxe.Int64;
    var Hash(default,default):haxe.Int64;
    var ManifestUrl(default,default):String;
    var Created(default,default):system.DateTimeOffset;
    var EngineVersion(default,default):Int;
    var Meta(default,default):String;
    var AssetVersionId(default,default):haxe.Int64;
}
