package sandbox.gizmo;

@:native("Sandbox.Gizmo.SceneSettings")
extern class SceneSettings {
    function new():Void;
    /** How do we want to edit this? Usually something like "position", "rotation", "scale" etc */
    var EditMode(default,default):String;
    /** Do we want to let the user select things in the current mode? */
    var Selection(default,default):Bool;
    /** What is the current view mode? 3d, 2d, ui? */
    var ViewMode(default,default):String;
    /** Are gizmos enabled? */
    var GizmosEnabled(default,default):Bool;
    /** How big to show the gizmos */
    var GizmoScale(default,default):Single;
    /** Grid spacing */
    var GridSpacing(default,default):Single;
    /** Snap positions to the grid */
    var SnapToGrid(default,default):Bool;
    /** Snap angles */
    var SnapToAngles(default,default):Bool;
    /** Grid spacing */
    var AngleSpacing(default,default):Single;
    /** Editing in local space */
    var GlobalSpace(default,default):Bool;
    /** Should we show lines representing GameObject references in action graphs? */
    var DebugActionGraphs(default,default):Bool;
    /** Clear all enabled gizmos */
    function ClearEnabledGizmos():Void;
    /** Check if a gizmo type is enabled */
    function IsGizmoEnabled(type:cs.system.Type):Bool;
    /** Set the enabled state of a gizmo type */
    function SetGizmoEnabled(type:cs.system.Type, enabled:Bool):Void;
}
