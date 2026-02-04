package sandbox.package;

/** Represents the actual response from the api */
@:native("Sandbox.Package.ListResult")
extern class ListResult {
    function new():Void;
    /** The name of this group */
    var Title(default,default):String;
    /** The groups of packages */
    var Groupings(default,default):Array<sandbox.package.listresult.Grouping>;
}
