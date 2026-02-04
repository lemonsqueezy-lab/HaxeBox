package sandbox.gizmo;

/** Contains functions to add objects to the immediate mode Scene. This is an instantiable class so it's possible to add extensions. */
@:native("Sandbox.Gizmo.GizmoHitbox")
final extern class GizmoHitbox {
    /** Whether or not drawn gizmos can be interacted with. Only affects gizmos in the current scope. */
    var CanInteract(default,default):Bool;
    var Debug(default,never):Bool;
    var DepthBias(default,default):Single;
    function AddPotentialLine(p0:Vector3, p1:Vector3, thickness:Single):Void;
    /** A bounding box hitbox */
    function BBox(bounds:BBox):Void;
    /** A 2d circle hitbox, on a plane */
    function Circle(center:Vector3, forward:Vector3, outerRadius:Single, innerRadius:Single):Void;
    /** Start a line scope. Any drawn lines should become a hitbox during this scope. */
    function LineScope():system.IDisposable;
    /** A model hitbox */
    overload function Model(model:sandbox.Model):Void;
    overload function Model(model:sandbox.Model, maxDistance:Single):Void;
    /** A sphere hitbox */
    function Sphere(sphere:sandbox.Sphere):Void;
    /** A 2d sprite hitbox */
    function Sprite(center:Vector3, size:Single, worldspace:Bool):Void;
    /** If this distance is closer than our previous best, this path will become the hovered path */
    overload function TrySetHovered(distance:Single):Void;
    overload function TrySetHovered(position:Vector3):Void;
}
