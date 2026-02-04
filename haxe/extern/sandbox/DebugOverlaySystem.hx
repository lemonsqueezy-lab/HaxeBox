package sandbox;

@:native("Sandbox.DebugOverlaySystem")
final extern class DebugOverlaySystem {
    function new(scene:sandbox.Scene):Void;
    var Scene(default,never):sandbox.Scene;
    var Id(default,never):system.Guid;
    /** Draw a box */
    overload function Box(box:BBox, color:Color, duration:Single, transform:Transform, overlay:Bool):Void;
    overload function Box(position:Vector3, size:Vector3, color:Color, duration:Single, transform:Transform, overlay:Bool):Void;
    /** Draw a wireframe capsule, simple cylinder with 2 hemispheres. */
    function Capsule(capsule:Capsule, color:Color, duration:Single, transform:Transform, overlay:Bool, segments:Int):Void;
    /** Draw a wireframe cylinder, like a capsule without the hemispheres, showing all sides. */
    function Cylinder(capsule:Capsule, color:Color, duration:Single, transform:Transform, overlay:Bool, segments:Int):Void;
    /** Draw a frustum */
    function Frustum(frustum:sandbox.Frustum, color:Color, duration:Single, transform:Transform, overlay:Bool):Void;
    /** Draw a GameObject in the world */
    function GameObject(go:sandbox.GameObject, color:Color, duration:Single, transform:Transform, overlay:Bool, castShadows:Bool, materialOveride:sandbox.Material):Void;
    /** Draw a line */
    overload function Line(line:Line, color:Color, duration:Single, transform:Transform, overlay:Bool):Void;
    overload function Line(points:system.collections.generic.IEnumerable<Vector3>, color:Color, duration:Single, transform:Transform, overlay:Bool):Void;
    overload function Line(from:Vector3, to:Vector3, color:Color, duration:Single, transform:Transform, overlay:Bool):Void;
    /** Draw model in the world */
    function Model(model:sandbox.Model, color:Color, duration:Single, transform:Transform, overlay:Bool, castShadows:Bool, materialOveride:sandbox.Material, localBoneTransforms:Array<Transform>):Void;
    /** Draw a line */
    function Normal(position:Vector3, direction:Vector3, color:Color, duration:Single, transform:Transform, overlay:Bool):Void;
    /** Draw text on the screen */
    overload function ScreenText(pixelPosition:Vector2, textBlock:sandbox.textrendering.Scope, flags:sandbox.TextFlag, duration:Single):Void;
    overload function ScreenText(pixelPosition:Vector2, text:String, size:Single, flags:sandbox.TextFlag, color:Color, duration:Single):Void;
    /** Draw a sphere */
    function Sphere(sphere:sandbox.Sphere, color:Color, duration:Single, transform:Transform, overlay:Bool):Void;
    /** Draw text in the world */
    overload function Text(position:Vector3, scope:sandbox.textrendering.Scope, flags:sandbox.TextFlag, duration:Single, overlay:Bool):Void;
    overload function Text(position:Vector3, text:String, size:Single, flags:sandbox.TextFlag, color:Color, duration:Single, overlay:Bool):Void;
    /** Draw a texture on the screen */
    overload function Texture(texture:sandbox.Texture, position:Vector2, color:Null<Color>, duration:Single):Void;
    overload function Texture(texture:sandbox.Texture, screenRect:sandbox.Rect, color:Null<Color>, duration:Single):Void;
    /** Draws the result of a physics trace, showing the start and end points, the hit location and normal (if any), and the traced shape (ray, sphere, box, capsule, cylinder) at both the start and end positions. */
    function Trace(trace:sandbox.SceneTraceResult, duration:Single, overlay:Bool):Void;
}
