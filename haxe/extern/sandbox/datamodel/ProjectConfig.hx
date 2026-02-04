package sandbox.datamodel;

/** Configuration of a . */
@:native("Sandbox.DataModel.ProjectConfig")
extern class ProjectConfig {
    function new():Void;
    /** The directory housing this addon (TODO) */
    var Directory(default,default):system.io.DirectoryInfo;
    /** The directory housing this addon (TODO) */
    var AssetsDirectory(default,default):system.io.DirectoryInfo;
    /** The human readable title, for example "Sandbox", "Counter-Strike" */
    var Title(default,default):String;
    /** The type of addon. Current valid values are "game" */
    var Type(default,default):String;
    /** The ident of the org that owns this addon. For example "facepunch", "valve". */
    var Org(default,default):String;
    /** The ident of this addon. For example "sandbox", "cs" or "dm98" */
    var Ident(default,default):String;
    /** Type of the package. */
    var PackageType(default,never):sandbox.package.Type;
    /** Returns a combination of Org and Ident - for example "facepunch.sandbox" or "valve.cs". */
    var FullIdent(default,never):String;
    /** The version of the addon file. Allows us to upgrade internally. */
    var Schema(default,default):Int;
    /** If true then we'll include all the source files */
    var IncludeSourceFiles(default,default):Bool;
    /** A list of paths in which to look for extra assets to upload with the addon. Note that compiled asset files are automatically included. */
    var Resources(default,default):String;
    /** A list of packages that this package depends on. These should be installed alongside this package. */
    var PackageReferences(default,default):system.collections.generic.List<String>;
    /** A list of packages that this package uses but there is no need to install. For example, a map package might use a model package - but there is no need to download that model package because any usage will organically be included in the manifest. However, when loading this item in the editor, it'd make sense to install these 'cloud' packages. */
    var EditorReferences(default,default):system.collections.generic.List<String>;
    /** A list of mounts that are required */
    var Mounts(default,default):system.collections.generic.List<String>;
    /** Whether or not this project is standalone-only, and supports disabling the whitelist, compiling with /unsafe, etc. */
    var IsStandaloneOnly(default,default):Bool;
    /** Custom key-value storage for this project. */
    var Metadata(default,default):system.collections.generic.Dictionary<String,cs.system.Object>;
    function GetMetaOrDefault<T>(keyname:String, defaultValue:T):T;
    /** Store custom data at given key in the . */
    function SetMeta(keyname:String, outvalue:cs.system.Object):Bool;
    /** Serialize the entire config to a JSON string. */
    function ToJson():String;
    function ToString():String;
    function TryGetMeta<T>(keyname:String, outvalue:T):Bool;
}
