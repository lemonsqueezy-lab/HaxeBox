package sandbox.blobdata;

/** Context for writing binary blob data. Wraps ByteStream for allocation-free serialization. */
@:native("Sandbox.BlobData.Writer")
final extern class Writer {
    var Stream(default,set):sandbox.ByteStream;

    private inline function set_Stream(value:sandbox.ByteStream):sandbox.ByteStream {
        var __value:sandbox.ByteStream = cast value;
        return untyped __cs__("{0}.Stream = {1}", this, __value);
    }

}
