package sandbox.interop;

@:native("Sandbox.Interop.InteropWString")
final extern class InteropWString {
    function new(str:String):Void;
    var Pointer(default,set):system.IntPtr;

    private inline function set_Pointer(value:system.IntPtr):system.IntPtr {
        var __value:system.IntPtr = cast value;
        return untyped __cs__("{0}.Pointer = {1}", this, __value);
    }

    function Free():Void;
}
