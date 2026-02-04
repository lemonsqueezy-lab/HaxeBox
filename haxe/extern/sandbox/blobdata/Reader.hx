package sandbox.blobdata;

/** Context for reading binary blob data. Wraps ByteStream for allocation-free deserialization. */
@:native("Sandbox.BlobData.Reader")
final extern class Reader {
    var Stream(default,set):sandbox.ByteStream;

    private inline function set_Stream(value:sandbox.ByteStream):sandbox.ByteStream {
        var __value:sandbox.ByteStream = cast value;
        return untyped __cs__("{0}.Stream = {1}", this, __value);
    }

    var DataVersion(default,set):Int;

    private inline function set_DataVersion(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.DataVersion = {1}", this, __value);
    }

}
