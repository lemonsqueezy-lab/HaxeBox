package sandbox;

/** A filesystem. Could be on disk, or in memory, or in the cloud. Could be writable or read only. Or it could be an aggregation of all those things, merged together and read only. */
@:native("Sandbox.BaseFileSystem")
extern class BaseFileSystem {
    var IsValid(default,never):Bool;
    /** Returns true if this filesystem is read only */
    var IsReadOnly(default,never):Bool;
    @:protected
    var system(null,null):zio.IFileSystem;
    @:protected
    var watcher(null,null):zio.IFileSystemWatcher;
    /** Create a directory - or a tree of directories. Returns silently if the directory already exists. */
    function CreateDirectory(folder:String):Void;
    /** Create a sub-filesystem at the specified path */
    function CreateSubSystem(path:String):sandbox.BaseFileSystem;
    /** Delete a folder and optionally all of its contents */
    function DeleteDirectory(folder:String, recursive:Bool):Void;
    /** Delete a file */
    function DeleteFile(path:String):Void;
    /** Returns true if the directory exists on this filesystem */
    function DirectoryExists(path:String):Bool;
    /** Gets the size in bytes of all the files in a directory */
    function DirectorySize(path:String, recursive:Bool):Int;
    /** Returns true if the file exists on this filesystem */
    function FileExists(path:String):Bool;
    /** Returns file size of given file. */
    function FileSize(filepath:String):haxe.Int64;
    /** Get a list of directories */
    function FindDirectory(folder:String, pattern:String, recursive:Bool):system.collections.generic.IEnumerable<String>;
    /** Get a list of files */
    function FindFile(folder:String, pattern:String, recursive:Bool):system.collections.generic.IEnumerable<String>;
    /** Returns CRC64 of the file contents. */
    function GetCrc(filepath:String):system.UInt64;
    /** Returns CRC64 of the file contents. */
    function GetCrcAsync(filepath:String):system.threading.tasks.Task1<system.UInt64>;
    /** Returns the full physical path to a file or folder on disk, or null if it isn't on disk. */
    function GetFullPath(path:String):String;
    /** Open a file for read. Will throw an exception if it doesn't exist. */
    function OpenRead(path:String, mode:system.io.FileMode):system.io.Stream;
    /** Open a file for write. If the file exists we'll overwrite it (by default) */
    function OpenWrite(path:String, mode:system.io.FileMode):system.io.Stream;
    /** Read the contents of path and return it as a string */
    function ReadAllBytes(path:String):system.Span<Int>;
    /** Read the contents of path and return it as a string */
    function ReadAllBytesAsync(path:String):system.threading.tasks.Task1<Array<Int>>;
    /** Read the contents of path and return it as a string. Returns null if file not found. */
    function ReadAllText(path:String):String;
    /** Read the contents of path and return it as a string */
    function ReadAllTextAsync(path:String):system.threading.tasks.Task1<String>;
    function ReadJson<T>(filename:String, defaultValue:T):T;
    function ReadJsonOrDefault<T>(filename:String, returnOnError:T):T;
    /** Write the contents to the path. The file will be over-written if the file exists */
    function WriteAllBytes(path:String, contents:Array<Int>):Void;
    /** Write the contents to the path. The file will be over-written if the file exists */
    function WriteAllText(path:String, contents:String):Void;
    function WriteJson<T>(filename:String, data:T):Void;
}
