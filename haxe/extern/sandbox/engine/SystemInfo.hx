package sandbox.engine;

@:native("Sandbox.Engine.SystemInfo")
final extern class SystemInfo {
    /** Human-readable product name of this system's processor. */
    static var ProcessorName(default,never):String;
    /** The frequency of this system's processor in GHz. */
    static var ProcessorFrequency(default,never):Single;
    /** The number of logical processors in this system. */
    static var ProcessorCount(default,never):Single;
    /** Total physical memory available on this machine, in bytes. */
    static var TotalMemory(default,never):system.UInt64;
    /** Human-readable product name of the graphics card in this system. */
    static var Gpu(default,never):String;
    /** The version number of the graphics card driver. */
    static var GpuVersion(default,never):String;
    /** Total VRAM on this system's graphics card. */
    static var GpuMemory(default,never):system.UInt64;
    /** Indicates the amount of available free space on game drive in bytes */
    static var StorageSizeAvailable(default,never):haxe.Int64;
    /** Gets the total size of storage space on game drive in bytes */
    static var StorageSizeTotal(default,never):haxe.Int64;
}
