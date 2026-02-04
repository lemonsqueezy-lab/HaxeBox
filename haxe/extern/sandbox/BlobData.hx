package sandbox;

/** Base class for properties that should be serialized to binary format instead of JSON. Used for large data structures that would be inefficient as JSON. */
@:native("Sandbox.BlobData")
extern class BlobData {
    /** The version of this binary data format. Used for upgrade paths. */
    var Version(default,never):Int;
    function Deserialize(reader:sandbox.blobdata.Reader):Void;
    function Serialize(writer:sandbox.blobdata.Writer):Void;
    function Upgrade(reader:sandbox.blobdata.Reader, fromVersion:Int):Void;
}
