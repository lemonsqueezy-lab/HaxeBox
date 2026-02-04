package sandbox.ui.paneltransform;

@:native("Sandbox.UI.PanelTransform.Entry")
final extern class Entry {
    var Type(default,set):sandbox.ui.paneltransform.EntryType;

    private inline function set_Type(value:sandbox.ui.paneltransform.EntryType):sandbox.ui.paneltransform.EntryType {
        var __value:sandbox.ui.paneltransform.EntryType = cast value;
        return untyped __cs__("{0}.Type = {1}", this, __value);
    }

    var Data(default,set):Vector3;

    private inline function set_Data(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.Data = {1}", this, __value);
    }

    var Matrix(default,set):Matrix;

    private inline function set_Matrix(value:Matrix):Matrix {
        var __value:Matrix = cast value;
        return untyped __cs__("{0}.Matrix = {1}", this, __value);
    }

    var X(default,set):sandbox.ui.Length;

    private inline function set_X(value:sandbox.ui.Length):sandbox.ui.Length {
        var __value:sandbox.ui.Length = cast value;
        return untyped __cs__("{0}.X = {1}", this, __value);
    }

    var Y(default,set):sandbox.ui.Length;

    private inline function set_Y(value:sandbox.ui.Length):sandbox.ui.Length {
        var __value:sandbox.ui.Length = cast value;
        return untyped __cs__("{0}.Y = {1}", this, __value);
    }

    var Z(default,set):sandbox.ui.Length;

    private inline function set_Z(value:sandbox.ui.Length):sandbox.ui.Length {
        var __value:sandbox.ui.Length = cast value;
        return untyped __cs__("{0}.Z = {1}", this, __value);
    }

    function GetDefault():sandbox.ui.paneltransform.Entry;
    function ToMatrix(width:Single, height:Single):Matrix;
}
