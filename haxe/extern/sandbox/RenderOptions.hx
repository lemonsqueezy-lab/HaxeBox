package sandbox;

@:native("Sandbox.RenderOptions")
extern class RenderOptions {
    /** Regular game rendering layers */
    var Game(default,default):Bool;
    /** Rendered above everything else */
    var Overlay(default,default):Bool;
    /** Rendererd during bloom */
    var Bloom(default,default):Bool;
    /** Rendered after the UI is rendered */
    var AfterUI(default,default):Bool;
    /** Apply these options to a SceneObject */
    function Apply(obj:sandbox.SceneObject):Void;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(obj:sandbox.RenderOptions):Bool;
    function GetHashCode():Int;
    function OnPropertyDirty<T>(p:sandbox.WrappedPropertySet<T>):Void;
}
