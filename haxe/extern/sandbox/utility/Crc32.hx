package sandbox.utility;

/** Generates 32-bit Cyclic Redundancy Check (CRC32) checksums. Used for data integrity verification and fast hashing. */
@:native("Sandbox.Utility.Crc32")
final extern class Crc32 {
    /** Generates a CRC32 checksum from a byte stream. */
    static function FromBytes(byteStream:system.collections.generic.IEnumerable<Int>):UInt;
    /** Generates a CRC32 checksum from a stream asynchronously. */
    static function FromStreamAsync(stream:system.io.Stream):system.threading.tasks.Task1<UInt>;
    /** Generates a CRC32 checksum from a string. */
    static function FromString(str:String):UInt;
}
