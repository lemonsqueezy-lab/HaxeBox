package sandbox.services;

@:native("Sandbox.Services.PackageFindResult")
extern class PackageFindResult {
    function new():Void;
    var Packages(default,default):system.collections.generic.List<sandbox.services.PackageWrapMinimal>;
    var TotalCount(default,default):Int;
    var Facets(default,default):system.collections.generic.List<sandbox.services.PackageFacet>;
    var Tags(default,default):system.collections.generic.Dictionary<String,Int>;
    var Orders(default,default):system.collections.generic.List<sandbox.services.SortOrder>;
    var Properties(default,default):system.collections.generic.List<sandbox.services.PackagePropertyTag>;
}
