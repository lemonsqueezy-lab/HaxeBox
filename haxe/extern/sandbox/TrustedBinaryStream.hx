package sandbox;

/** Wraps a stream containing a binary that has passed access control. */
@:native("Sandbox.TrustedBinaryStream")
final extern class TrustedBinaryStream {
    var CanRead(default,never):Bool;
    var CanSeek(default,never):Bool;
    var CanWrite(default,never):Bool;
    var Length(default,never):haxe.Int64;
    var Position(default,default):haxe.Int64;
    var CanTimeout(default,never):Bool;
    var ReadTimeout(default,default):Int;
    var WriteTimeout(default,default):Int;
    function Flush():Void;
    function Read(buffer:Array<Int>, offset:Int, count:Int):Int;
    function Seek(offset:haxe.Int64, origin:system.io.SeekOrigin):haxe.Int64;
    function SetLength(value:haxe.Int64):Void;
    function Write(buffer:Array<Int>, offset:Int, count:Int):Void;
}
