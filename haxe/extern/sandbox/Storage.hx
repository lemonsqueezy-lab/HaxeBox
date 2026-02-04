package sandbox;

@:native("Sandbox.Storage")
final extern class Storage {
    /** Create a new storage entry of the given type. */
    static function CreateEntry(type:String):sandbox.storage.Entry;
    static function GetAll(type:String):Array<sandbox.storage.Entry>;
}
