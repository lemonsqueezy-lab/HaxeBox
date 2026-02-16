package sandbox.ui;

/** An interactive 2D panel rendered in the 3D world. */
@:native("Sandbox.UI.WorldPanel")
extern class WorldPanel extends sandbox.ui.RootPanel {
    function new(world:sandbox.SceneWorld):Void;
    static var ScreenToWorldScale(default,never):Single;
    /** Transform of the world panel in 3D space. */
    var Transform(default,default):Transform;
    /** Tags that are applied to the underlying SceneObject */
    var Tags(default,never):sandbox.ITagSet;
    /** Position of the world panel in 3D space. */
    var Position(default,default):Vector3;
    /** Rotation of the world panel in 3D space. */
    var Rotation(default,default):Rotation;
    /** Scale of the world panel in 3D space. */
    var WorldScale(default,default):Single;
    /** Maximum distance at which a player can interact with this world panel. */
    var MaxInteractionDistance(default,default):Single;
    function Delete(immediate:Bool):Void;
    function OnDeleted():Void;
    function RayToLocalPosition(ray:Ray, position:Vector2, distance:Single):Bool;
    /** Update the bounds for this panel. We purposely do nothing here because on world panels you can change the bounds by setting . */
    @:protected function UpdateBounds(rect:sandbox.Rect):Void;
    /** We override this to prevent the scale automatically being set based on screen size changing.. because that's obviously not needed here. */
    @:protected function UpdateScale(screenSize:sandbox.Rect):Void;
}
