package sandbox.mounting;

/** Represents a directory in the resource tree structure. Contains child directories and resource files. */
@:native("Sandbox.Mounting.ResourceFolder")
extern class ResourceFolder {
    /** The name of this directory */
    var Name(default,never):String;
    /** The full path to this directory */
    var Path(default,never):String;
    /** Parent directory. Null if this is the root. */
    var Parent(default,never):sandbox.mounting.ResourceFolder;
    /** Child directories */
    var Folders(default,never):system.collections.generic.List<sandbox.mounting.ResourceFolder>;
    /** Resource files in this directory */
    var Files(default,never):system.collections.generic.List<sandbox.mounting.ResourceLoader<Dynamic>>;
    /** Check if this is the root directory */
    var IsRoot(default,never):Bool;
    /** Get the depth level of this directory (0 for root) */
    var Depth(default,never):Int;
    /** Returns true if this directory or any subdirectory contains a resource of the specified type */
    function ContainsType(type:sandbox.mounting.ResourceType):Bool;
    /** Get all files recursively from this directory and all subdirectories */
    function GetAllFilesRecursive():system.collections.generic.IEnumerable<sandbox.mounting.ResourceLoader<Dynamic>>;
}
