package sandbox;

/** Write and read bytes to a stream. This aims to be as allocation free as possible while also being as fast as possible. */
@:native("Sandbox.ByteStream")
final extern class ByteStream {
    /** Is this stream writable? */
    var Writable(default,never):Bool;
    /** The current read or write position. Values are clamped to valid range. */
    var Position(default,set):Int;

    private inline function set_Position(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Position = {1}", this, __value);
    }

    /** The total size of the data */
    var Length(default,never):Int;
    var ReadRemaining(default,never):Int;
    function Compress(compressionLevel:system.io.compression.CompressionLevel):sandbox.ByteStream;
    /** Create a writable byte stream */
    static function Create(size:Int):sandbox.ByteStream;
    /** Create a reader byte stream */
    static function CreateReader(data:system.ReadOnlySpan<Int>):sandbox.ByteStream;
    function Decompress():sandbox.ByteStream;
    function Dispose():Void;
    /** Validates read bounds with overflow protection */
    function EnsureCanRead(size:Int):Void;
    /** Ensures buffer can accommodate write with overflow protection */
    function EnsureCanWrite(size:Int):Void;
    /** Reads an unmanaged type */
    overload function Read<T>():T;
    overload function Read(buffer:system.Span<Int>):Int;
    overload function Read<T>(defaultValue:String):String;
    overload function Read<T>(defaultValue:T, unused:Bool):T;
    overload function Read(buffer:Array<Int>, offset:Int, count:Int):Int;
    /** Returns an array of unmanaged types */
    function ReadArray<T>(maxElements:Int):Array<T>;
    function ReadObject(objectType:cs.system.Type):cs.system.Object;
    /** Get the data as an array of bytes */
    function ToArray():Array<Int>;
    function TryRead<T>(v:T):Bool;
    /** Writes a string */
    overload function Write(rawData:Array<Int>):Void;
    overload function Write(str:String):Void;
    overload function Write(stream:sandbox.ByteStream):Void;
    overload function Write<T>(value:T):Void;
    overload function Write<T>(data:T, unused:Bool):Void;
    overload function Write(rawData:Array<Int>, offset:Int, bytes:Int):Void;
    overload function Write(stream:sandbox.ByteStream, offset:Int, maxSize:Int):Void;
    overload function WriteArray<T>(arr:system.ReadOnlySpan<T>):Void;
    overload function WriteArray<T>(arr:Array<T>, includeCount:Bool):Void;
}
