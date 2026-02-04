package sandbox.compression;

/** Encode and decode LZ4 compressed data. */
@:native("Sandbox.Compression.LZ4")
final extern class LZ4 {
    /** Encode data as an LZ4 block. */
    static function CompressBlock(data:system.ReadOnlySpan<Int>):Array<Int>;
    /** Encode data as an LZ4 frame. */
    static function CompressFrame(data:system.ReadOnlySpan<Int>):Array<Int>;
    /** Decode raw LZ4 block data. */
    static function DecompressBlock(src:system.ReadOnlySpan<Int>, dest:system.Span<Int>):Int;
    /** Decode an LZ4 frame. */
    static function DecompressFrame(data:system.ReadOnlySpan<Int>):Array<Int>;
}
