package sandbox.services;

@:native("Sandbox.Services.PackageGroups")
extern class PackageGroups {
    function new():Void;
    var Title(default,default):String;
    var Groupings(default,default):system.collections.generic.List<sandbox.services.packagegroups.Grouping>;
    var Milliseconds(default,default):Float;
}
