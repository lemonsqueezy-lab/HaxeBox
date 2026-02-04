package sandbox.gizmo;

/** The input state, allows interaction with Gizmos */
@:native("Sandbox.Gizmo.Inputs")
final extern class Inputs {
    var CursorPosition(default,set):Vector2;

    private inline function set_CursorPosition(value:Vector2):Vector2 {
        var __value:Vector2 = cast value;
        return untyped __cs__("{0}.CursorPosition = {1}", this, __value);
    }

    var CursorRay(default,set):Ray;

    private inline function set_CursorRay(value:Ray):Ray {
        var __value:Ray = cast value;
        return untyped __cs__("{0}.CursorRay = {1}", this, __value);
    }

    var LeftMouse(default,set):Bool;

    private inline function set_LeftMouse(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.LeftMouse = {1}", this, __value);
    }

    var RightMouse(default,set):Bool;

    private inline function set_RightMouse(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.RightMouse = {1}", this, __value);
    }

    var DoubleClick(default,set):Bool;

    private inline function set_DoubleClick(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.DoubleClick = {1}", this, __value);
    }

    var Modifiers(default,set):sandbox.KeyboardModifiers;

    private inline function set_Modifiers(value:sandbox.KeyboardModifiers):sandbox.KeyboardModifiers {
        var __value:sandbox.KeyboardModifiers = cast value;
        return untyped __cs__("{0}.Modifiers = {1}", this, __value);
    }

    var Camera(default,set):sandbox.SceneCamera;

    private inline function set_Camera(value:sandbox.SceneCamera):sandbox.SceneCamera {
        var __value:sandbox.SceneCamera = cast value;
        return untyped __cs__("{0}.Camera = {1}", this, __value);
    }

    /** True if the scene is being hovered by the mouse. False if the cursor is being used somewhere else */
    var IsHovered(default,set):Bool;

    private inline function set_IsHovered(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.IsHovered = {1}", this, __value);
    }

}
