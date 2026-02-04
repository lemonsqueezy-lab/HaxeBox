package sandbox.resources.vtexwriter;

@:native("Sandbox.Resources.VTexWriter.VTEX_Header_t")
final extern class VTEX_Header_t {
    function new():Void;
    var InternalVersion(default,set):Int;

    private inline function set_InternalVersion(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.InternalVersion = {1}", this, __value);
    }

    var Flags(default,set):sandbox.resources.vtexwriter.VTEX_Flags_t;

    private inline function set_Flags(value:sandbox.resources.vtexwriter.VTEX_Flags_t):sandbox.resources.vtexwriter.VTEX_Flags_t {
        var __value:sandbox.resources.vtexwriter.VTEX_Flags_t = cast value;
        return untyped __cs__("{0}.Flags = {1}", this, __value);
    }

    var Reflectivity(default,set):Color;

    private inline function set_Reflectivity(value:Color):Color {
        var __value:Color = cast value;
        return untyped __cs__("{0}.Reflectivity = {1}", this, __value);
    }

    var Width(default,set):Int;

    private inline function set_Width(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Width = {1}", this, __value);
    }

    var Height(default,set):Int;

    private inline function set_Height(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Height = {1}", this, __value);
    }

    var Depth(default,set):Int;

    private inline function set_Depth(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Depth = {1}", this, __value);
    }

    var Format(default,set):sandbox.resources.vtexwriter.VTEX_Format_t;

    private inline function set_Format(value:sandbox.resources.vtexwriter.VTEX_Format_t):sandbox.resources.vtexwriter.VTEX_Format_t {
        var __value:sandbox.resources.vtexwriter.VTEX_Format_t = cast value;
        return untyped __cs__("{0}.Format = {1}", this, __value);
    }

    var MipCount(default,set):Int;

    private inline function set_MipCount(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.MipCount = {1}", this, __value);
    }

    var m_nPicmip0Res_Unused(default,set):Int;

    private inline function set_m_nPicmip0Res_Unused(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.m_nPicmip0Res_Unused = {1}", this, __value);
    }

}
