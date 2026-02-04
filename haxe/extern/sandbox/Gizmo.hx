package sandbox;

@:native("Sandbox.Gizmo")
final extern class Gizmo {
    /** Holds fully realized controls to manipulate some value */
    static var Control(default,never):sandbox.gizmo.GizmoControls;
    /** Draw a shape using the gizmo library */
    static var Draw(default,never):sandbox.gizmo.GizmoDraw;
    static var World(default,never):sandbox.SceneWorld;
    static var PreviousRay(default,never):Ray;
    static var CurrentRay(default,never):Ray;
    static var RayDepth(default,never):Single;
    static var ControlMode(default,never):String;
    static var Transform(default,default):Transform;
    static var Path(default,default):String;
    static var Object(default,default):cs.system.Object;
    static var Camera(default,never):sandbox.SceneCamera;
    static var IsHovered(default,never):Bool;
    static var IsSelected(default,never):Bool;
    static var IsChildSelected(default,never):Bool;
    static var WasClicked(default,never):Bool;
    static var HasSelected(default,never):Bool;
    static var HasHovered(default,never):Bool;
    static var HasClicked(default,never):Bool;
    static var HasMouseFocus(default,never):Bool;
    /** The current cursor position, in screen space */
    static var CursorPosition(default,never):Vector2;
    /** The delta of cursor movement between this frame and last, in screen space */
    static var CursorMoveDelta(default,never):Vector2;
    /** The delta of cursor movement between last press and now, in screen space. If left mouse isn't down, will return CursorMoveDelta */
    static var CursorDragDelta(default,never):Vector2;
    /** The current keyboard modifiers */
    static var KeyboardModifiers(default,never):sandbox.KeyboardModifiers;
    static var IsCtrlPressed(default,never):Bool;
    static var IsShiftPressed(default,never):Bool;
    static var IsAltPressed(default,never):Bool;
    static var WasLeftMouseReleased(default,never):Bool;
    static var IsLeftMouseDown(default,never):Bool;
    static var WasLeftMousePressed(default,never):Bool;
    static var WasRightMouseReleased(default,never):Bool;
    static var IsRightMouseDown(default,never):Bool;
    static var WasRightMousePressed(default,never):Bool;
    static var IsDoubleClicked(default,never):Bool;
    /** The cameras transform - in world space */
    static var CameraTransform(default,never):Transform;
    /** The cameras transform - in local space */
    static var LocalCameraTransform(default,never):Transform;
    static var IsPressed(default,never):Bool;
    static var HasPressed(default,never):Bool;
    static var PressRay(default,never):Ray;
    static var Settings(default,never):sandbox.gizmo.SceneSettings;
    /** Allows creating a gizmo hitbox which will be interactable using the mouse (or vr deck2 super controller) */
    static var Hitbox(default,never):sandbox.gizmo.GizmoHitbox;
    static function EndInstance(previous:sandbox.gizmo.Instance):Void;
    /** Get the mouse delta at this current position */
    static function GetMouseDelta(position:Vector3, planeNormal:Vector3):Vector3;
    /** Get the distance from a point on a plane */
    static function GetMouseDistance(position:Vector3, planeNormal:Vector3):Single;
    /** Get the distance moved from (or towards) a position on a plane */
    static function GetMouseDistanceDelta(position:Vector3, planeNormal:Vector3):Single;
    /** Get the mouse drag distance at this current position, assuming we are pressed */
    static function GetMouseDrag(position:Vector3, planeNormal:Vector3):Vector3;
    /** Get the distance from a point on a plane */
    static function GetPositionOnPlane(position:Vector3, planeNormal:Vector3, ray:Ray):Null<Vector3>;
    /** Will give you a nudge vector along the most aligned left and up axis of the rotation based on left/right/up/down direction and camera angle */
    static function Nudge(rotation:Rotation, direction:Vector2):Vector3;
    static function ObjectScope<T>(obj:T, tx:Transform):system.IDisposable;
    /** Create a new scope - any changes to colors and transforms will be stored and reverted when exiting the scope. */
    static overload function Scope(path:String):system.IDisposable;
    static overload function Scope(path:String, tx:Transform):system.IDisposable;
    static overload function Scope(path:String, position:Vector3):system.IDisposable;
    static overload function Scope(path:String, position:Vector3, rotation:Rotation, scale:Single):system.IDisposable;
    static function Select(allowUnselect:Bool, allowMultiSelect:Bool):Void;
    /** Will snap this position, depending on the current snap settings and keys that are pressed. Will snap along if movement is detected along that axis. For example, if movement is 1,0,0 then we'll only snap on the x axis. */
    static overload function Snap(input:Angles, movement:Angles):Angles;
    static overload function Snap(startBox:BBox, movement:BBox):BBox;
    static overload function Snap(input:Vector3, movement:Vector3):Vector3;
}
