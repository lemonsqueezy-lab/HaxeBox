package sandbox.package.listresult;

@:native("Sandbox.Package.ListResult.Grouping")
extern class Grouping {
    function new():Void;
    /** The title of this group */
    var Title(default,default):String;
    /** The icon of this group */
    var Icon(default,default):String;
    /** The style of this group */
    var Style(default,default):String;
    /** Link to get a full list of this category */
    var QueryString(default,default):String;
    /** The packages in this group */
    var Packages(default,default):Array<sandbox.Package>;
}
