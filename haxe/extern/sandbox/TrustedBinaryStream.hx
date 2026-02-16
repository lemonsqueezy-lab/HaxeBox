package sandbox;

/** Wraps a stream containing a binary that has passed access control. */
@:native("Sandbox.TrustedBinaryStream")
final extern class TrustedBinaryStream extends system.io.Stream {
    function Flush():Void;
    function Read(buffer:Array<Int>, offset:Int, count:Int):Int;
    function Seek(offset:haxe.Int64, origin:system.io.SeekOrigin):haxe.Int64;
    function SetLength(value:haxe.Int64):Void;
    function Write(buffer:Array<Int>, offset:Int, count:Int):Void;
}
