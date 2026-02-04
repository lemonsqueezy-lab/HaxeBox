package sandbox.gizmo;

/** Extendable helper to create common gizmos */
@:native("Sandbox.Gizmo.GizmoControls")
final extern class GizmoControls {
    function Arrow(name:String, axis:Vector3, distance:Single, length:Single, girth:Single, axisOffset:Single, cullAngle:Single, snapSize:Single, head:String):Bool;
    overload function BoundingBox(name:String, value:BBox, outValue:BBox):Bool;
    overload function BoundingBox(name:String, value:BBox, outValue:BBox, outPressed:Bool):Bool;
    function Capsule(name:String, capsule:Capsule, outCapsule:Capsule, color:Color):Bool;
    function DragBox(name:String, size:Vector3, rotation:Rotation, movement:Vector3):Bool;
    function DragSquare(name:String, size:Vector2, rotation:Rotation, movement:Vector3, drawHandle:system.Action):Bool;
    function Position(name:String, position:Vector3, newPos:Vector3, axisRotation:Null<Rotation>, squareSize:Single):Bool;
    /** Scope this before drawing a control to obey Settings.GizmoScale */
    static function PushFixedScale(scale:Null<Single>):system.IDisposable;
    function Rotate(name:String, outValue:Angles):Bool;
    function RotateSingle(name:String, color:Color, angleDelta:Single, size:Single):Bool;
    overload function Scale(name:String, value:Single, outValue:Single):Bool;
    overload function Scale(name:String, value:Vector3, outValue:Vector3, axisRotation:Null<Rotation>, squareSize:Single):Bool;
    function Sphere(name:String, radius:Single, outRadius:Single, color:Color):Bool;
}
