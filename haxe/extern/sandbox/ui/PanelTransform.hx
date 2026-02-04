package sandbox.ui;

@:native("Sandbox.UI.PanelTransform")
final extern class PanelTransform {
    var Entries(default,never):Int;
    var List(default,set):system.collections.immutable.ImmutableList<sandbox.ui.paneltransform.Entry>;

    private inline function set_List(value:system.collections.immutable.ImmutableList<sandbox.ui.paneltransform.Entry>):system.collections.immutable.ImmutableList<sandbox.ui.paneltransform.Entry> {
        var __value:system.collections.immutable.ImmutableList<sandbox.ui.paneltransform.Entry> = cast value;
        return untyped __cs__("{0}.List = {1}", this, __value);
    }

    function AddMatrix3D(matrix:Matrix):Bool;
    function AddPerspective(d:sandbox.ui.Length):Bool;
    overload function AddRotation(angles:Vector3):Bool;
    overload function AddRotation(x:Single, y:Single, z:Single):Bool;
    overload function AddScale(scale:Single):Bool;
    overload function AddScale(scale:Vector3):Bool;
    function AddSkew(x:Single, y:Single, z:Single):Bool;
    function AddTranslate(lengthX:Null<sandbox.ui.Length>, lengthY:Null<sandbox.ui.Length>, lengthZ:Null<sandbox.ui.Length>):Bool;
    function AddTranslateX(length:Null<sandbox.ui.Length>):Bool;
    function AddTranslateY(length:Null<sandbox.ui.Length>):Bool;
    function AddTranslateZ(length:Null<sandbox.ui.Length>):Bool;
    function BuildTransform(width:Single, height:Single, perspectiveOrigin:Vector2):Matrix;
    function Equals(obj:cs.system.Object):Bool;
    function GetHashCode():Int;
    /** Returns true if this is empty. */
    function IsEmpty():Bool;
}
