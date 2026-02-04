package sandbox;

/** Allows storing files by hashed keys, rather than by actual filename. This is sometimes useful. */
@:native("Sandbox.KeyStore")
final extern class KeyStore {
    /** Creates a keystore which is in a global cache position. The folder can be deleted at any time, and it's all fine and no-one cares. */
    static function CreateGlobalCache():sandbox.KeyStore;
    /** Check if a key exists */
    function Exists(key:String):Bool;
    /** Get stored bytes, or return null */
    function Get(key:String):Array<Int>;
    /** Remove a key */
    function Remove(key:String):Void;
    /** Store a bunch of bytes */
    function Set(key:String, data:Array<Int>):Void;
    function TryGet(key:String, data:Array<Int>):Bool;
}
