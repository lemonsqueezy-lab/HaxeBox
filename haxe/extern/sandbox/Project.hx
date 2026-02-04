package sandbox;

/** Represents an on-disk project. */
@:native("Sandbox.Project")
final extern class Project {
    function new():Void;
    /** Whether the project's code has a compiler assigned. */
    var HasCompiler(default,never):Bool;
    /** Absolute path to the .addon file */
    var ConfigFilePath(default,default):String;
    /** Root directory of this project */
    var RootDirectory(default,default):system.io.DirectoryInfo;
    /** True if this project is active */
    var Active(default,default):Bool;
    /** True if this project is pinned, we'll prioritise it when sorting */
    var Pinned(default,default):Bool;
    /** When did the user last open this project? */
    var LastOpened(default,default):system.DateTimeOffset;
    /** True if this project failed to load properly for some reason */
    var Broken(default,default):Bool;
    /** Returns true if this project has previously been published. This is kind of a guess though because all it does is look to see if we have a published package cached with the same ident. */
    var IsPublished(default,never):Bool;
    /** The URL to the package's page for editing */
    var EditUrl(default,never):String;
    /** The URL to the package's page for viewing/linking */
    var ViewUrl(default,never):String;
    /** Configuration of the project. */
    var Config(default,default):sandbox.datamodel.ProjectConfig;
    /** If true this project isn't a 'real' project. It's likely a temporary project created with the intention to configure and publish a single asset. */
    var IsTransient(default,never):Bool;
    /** If true this project isn't a 'real' project. It's likely a temporary project created with the intention to configure and publish a single asset. */
    var IsBuiltIn(default,never):Bool;
    /** The package for this project. This is a mock up of the actual package. */
    var Package(default,never):sandbox.Package;
    /** Current open project. */
    static var Current(default,never):sandbox.Project;
    /** Absolute path to the Assets folder of the project, or if not set. */
    function GetAssetsPath():String;
    /** Absolute path to the Code folder of the project. */
    function GetCodePath():String;
    /** Absolute path to the Editor folder of the project. */
    function GetEditorPath():String;
    /** Absolute path to the Localization folder of the project, or if not set. */
    function GetLocalizationPath():String;
    /** Gets the .sbproj file for this project */
    function GetProjectPath():String;
    /** Absolute path to the location of the .sbproj file of the project. */
    function GetRootPath():String;
    /** Returns true if the Assets path exists */
    function HasAssetsPath():Bool;
    /** Returns true if the Code path exists */
    function HasCodePath():Bool;
    /** Returns true if the Editor path exists */
    function HasEditorPath():Bool;
    /** Return true if this project type uploads all the source files when it's published */
    function IsSourcePublish():Bool;
    static function Load(dir:String):sandbox.Project;
}
