package sandbox.package;

/** A result from the call to FindAsync */
@:native("Sandbox.Package.FindResult")
extern class FindResult {
    function new():Void;
    /** The amount of time the query took */
    var Milliseconds(default,default):Float;
    /** A list of packages retrieved */
    var Packages(default,default):Array<sandbox.Package>;
    /** The total amount of packages */
    var TotalCount(default,default):Int;
    /** Facets particular to this search */
    var Facets(default,default):Array<sandbox.package.Facet>;
    /** A list of tags relevant to this search */
    var Tags(default,default):Array<sandbox.package.TagEntry>;
    /** A list of sort orders. There may be other sort orders, but we provide a list here that can be easily used to save rewriting the same code over and over. */
    var Orders(default,default):Array<sandbox.package.SortOrder>;
    /** Binary options */
    var Properties(default,default):Array<sandbox.package.PackageProperty>;
}
