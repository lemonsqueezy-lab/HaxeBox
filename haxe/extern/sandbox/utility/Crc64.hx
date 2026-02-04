package sandbox.utility;

/** Generate 64-bit Cyclic Redundancy Check (CRC64) checksums. */
@:native("Sandbox.Utility.Crc64")
final extern class Crc64 {
    /** Generates a CRC64 checksum from a byte array. */
    static function FromBytes(stream:Array<Int>):system.UInt64;
    /** Generates a CRC64 checksum from a stream. */
    static function FromStream(stream:system.io.Stream):system.UInt64;
    /** Generates a CRC64 checksum from a stream asynchronously. */
    static function FromStreamAsync(stream:system.io.Stream):system.threading.tasks.Task1<system.UInt64>;
    /** Generates a CRC64 checksum from a string. */
    static function FromString(str:String):system.UInt64;
}
