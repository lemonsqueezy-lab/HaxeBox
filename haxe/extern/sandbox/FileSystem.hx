package sandbox;

/** A filesystem that can be accessed by the game. */
@:native("Sandbox.FileSystem")
final extern class FileSystem {
    /** All mounted content. */
    static var Mounted(default,never):sandbox.BaseFileSystem;
    /** A subset of for custom gamemode data. */
    static var Data(default,never):sandbox.BaseFileSystem;
    /** A filesystem for custom data, per gamemode's organization. */
    static var OrganizationData(default,never):sandbox.BaseFileSystem;
    static var Cache(default,default):sandbox.KeyStore;
    /** Create a filesystem that exists only in memory */
    static function CreateMemoryFileSystem():sandbox.BaseFileSystem;
    /** Normalizes given file path so the game's filesystem can understand it. Fixes slashes and lowercases the file path. */
    static function NormalizeFilename(filepath:String):String;
}
