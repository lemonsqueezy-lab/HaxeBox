package sandbox.blobdataserializer;

/** A disposable context for blob serialization/deserialization. */
@:native("Sandbox.BlobDataSerializer.BlobContext")
final extern class BlobContext {
    function Dispose():Void;
    function SaveTo(filePath:String):Bool;
    function ToByteArray():Array<Int>;
}
