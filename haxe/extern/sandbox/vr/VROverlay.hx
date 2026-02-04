package sandbox.vr;

/** VR overlays draw over the top of the 3D scene, they will not be affected by lighting, post processing effects or anything else in the world. This makes them ideal for HUDs or menus, or anything else that should be local to the HMD or tracked devices.If you need something in the world, consider using WorldPanel and WorldInput instead. */
@:native("Sandbox.VR.VROverlay")
extern class VROverlay {
    function new():Void;
    /** Shows or hides the VR overlay. */
    var Visible(default,default):Bool;
    /** Sets the transform to absolute tracking origin */
    var Transform(default,default):Transform;
    /** Sets the rendering sort order for the overlay. */
    var SortOrder(never,default):UInt;
    /** The width of the overlay quad. By default overlays are rendered on a quad that is 1 meter across. */
    var Width(default,default):Single;
    /** Use to draw overlay as a curved surface. Curvature is a percentage from (0..1] where 1 is a fully closed cylinder. For a specific radius, curvature can be computed as: overlay.width / (2 PI r). */
    var Curvature(default,default):Single;
    /** Sets the color tint of the overlay quad. Use 0.0 to 1.0 per channel. Sets the alpha of the overlay quad. Use 1.0 for 100 percent opacity to 0.0 for 0 percent opacity. */
    var Color(default,default):Color;
    /** Texture that is rendered on the overlay quad. */
    var Texture(default,default):sandbox.Texture;
    /** Sets the mouse scaling factor that is used for mouse events. */
    var MouseScale(default,default):Vector2;
    /** Destroys this overlay. */
    overload function Dispose():Void;
    @:protected overload function Dispose(disposing:Bool):Void;
    @:protected function Finalize():Void;
    /** Sets the transform to absolute tracking origin */
    function SetTransformAbsolute(transform:Transform):Void;
}
