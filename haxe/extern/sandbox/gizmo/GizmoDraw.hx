package sandbox.gizmo;

/** Contains functions to add objects to the Gizmo Scene. This is an instantiable class so it's possible to add extensions. */
@:native("Sandbox.Gizmo.GizmoDraw")
final extern class GizmoDraw {
    /** The color to render the next object */
    var Color(default,default):Color;
    /** Ignore depth when drawing, draw on top of everything */
    var IgnoreDepth(default,default):Bool;
    /** The thickness of line drawings */
    var LineThickness(default,default):Single;
    /** Don't draw backfaces when drawing solids */
    var CullBackfaces(default,default):Bool;
    /** Draw a line with an arrow on the end */
    function Arrow(from:Vector3, to:Vector3, arrowLength:Single, arrowWidth:Single):Void;
    /** Draws a grid */
    overload function Grid(axis:sandbox.gizmo.GridAxis, spacing:Single, opacity:Single, minorLineWidth:Single, majorLineWidth:Single):Void;
    overload function Grid(axis:sandbox.gizmo.GridAxis, spacing:Vector2, opacity:Single, minorLineWidth:Single, majorLineWidth:Single):Void;
    overload function Grid(center:Vector3, axis:sandbox.gizmo.GridAxis, spacing:Vector2, opacity:Single, minorLineWidth:Single, majorLineWidth:Single):Void;
    overload function Line(line:Line):Void;
    overload function Line(a:Vector3, b:Vector3):Void;
    function LineBBox(box:BBox):Void;
    function LineCapsule(capsule:Capsule, rings:Int):Void;
    overload function LineCircle(center:Vector3, radius:Single, startAngle:Single, totalDegrees:Single, sections:Int):Void;
    overload function LineCircle(center:Vector3, forward:Vector3, radius:Single, startAngle:Single, totalDegrees:Single, sections:Int):Void;
    overload function LineCircle(center:Vector3, forward:Vector3, up:Vector3, radius:Single, startAngle:Single, totalDegrees:Single, sections:Int):Void;
    /** A cylinder */
    function LineCylinder(vPointA:Vector3, vPointB:Vector3, flRadiusA:Single, flRadiusB:Single, nNumSegments:Int):Void;
    function LineFrustum(frustum:sandbox.Frustum):Void;
    overload function LineSphere(sphere:sandbox.Sphere, rings:Int):Void;
    overload function LineSphere(point:Vector3, radius:Single, rings:Int):Void;
    function LineTriangle(triangle:sandbox.Triangle):Void;
    function LineTriangles(triangles:system.collections.generic.IEnumerable<sandbox.Triangle>):Void;
    function Lines(lines:system.collections.generic.IEnumerable<Line>):Void;
    /** Draw a model */
    overload function Model(modelName:String):sandbox.SceneModel;
    overload function Model(modelName:sandbox.Model):sandbox.SceneModel;
    overload function Model(modelName:String, localTransform:Transform):sandbox.SceneModel;
    overload function Model(model:sandbox.Model, localTransform:Transform):sandbox.SceneModel;
    /** Draw particles. Control point 0 will be set to the transform position. */
    overload function Particles(modelName:String, updateSpeed:Null<Single>):Void;
    overload function Particles(modelName:String, localTransform:Transform, updateSpeed:Null<Single>):Void;
    /** Draw a plane */
    function Plane(position:Vector3, normal:Vector3):Void;
    /** Draws a half circle that tries its best to point towards the camera. This is used by the rotation widgets that bias towards the camera. */
    function ScreenBiasedHalfCircle(center:Vector3, radius:Single):Void;
    /** Draw a rect, on the screen */
    function ScreenRect(rect:sandbox.Rect, color:Color, borderRadius:Vector4, borderColor:Color, borderSize:Vector4, blendMode:sandbox.BlendMode):Void;
    /** Draw text with a text rendering scope for more text rendering customization. */
    overload function ScreenText(text:sandbox.textrendering.Scope, pos:Vector2, flags:sandbox.TextFlag):Void;
    overload function ScreenText(text:sandbox.textrendering.Scope, worldPos:Vector3, offset:Vector2, flags:sandbox.TextFlag):Void;
    overload function ScreenText(text:sandbox.textrendering.Scope, rect:sandbox.Rect, angle:Single, flags:sandbox.TextFlag):Void;
    overload function ScreenText(text:String, pos:Vector2, font:String, size:Single, flags:sandbox.TextFlag):Void;
    overload function ScreenText(text:String, worldPos:Vector3, offset:Vector2, font:String, size:Single, flags:sandbox.TextFlag):Void;
    /** Draw a solid box shape */
    function SolidBox(box:BBox):Void;
    /** Draw a solid capsule shape */
    function SolidCapsule(start:Vector3, end:Vector3, radius:Single, hSegments:Int, vSegments:Int):Void;
    /** Draw a filled circle */
    function SolidCircle(center:Vector3, radius:Single, startAngle:Single, totalDegrees:Single, sections:Int):Void;
    /** Draw a solid cone shape */
    function SolidCone(base:Vector3, extent:Vector3, flRadius:Single, segments:Null<Int>):Void;
    /** Draw a solid cylinder shape */
    function SolidCylinder(start:Vector3, end:Vector3, radius:Single, hSegments:Int):Void;
    /** Draw a filled ring */
    function SolidRing(center:Vector3, innerRadius:Single, outerRadius:Single, startAngle:Single, totalDegrees:Single, sections:Int):Void;
    /** Draw a solid sphere shape */
    function SolidSphere(center:Vector3, radius:Single, hSegments:Int, vSegments:Int):Void;
    overload function SolidTriangle(triangle:sandbox.Triangle):Void;
    overload function SolidTriangle(a:Vector3, b:Vector3, c:Vector3):Void;
    function SolidTriangles(triangles:system.collections.generic.IEnumerable<sandbox.Triangle>):Void;
    /** Draw a sprite. */
    overload function Sprite(center:Vector3, size:Single, texture:String):Void;
    overload function Sprite(center:Vector3, size:Single, texture:sandbox.Texture):Void;
    overload function Sprite(center:Vector3, size:Vector2, texture:sandbox.Texture, worldspace:Bool):Void;
    overload function Sprite(center:Vector3, size:Vector2, texture:sandbox.Texture, worldspace:Bool, angle:Single):Void;
    /** Draw text */
    function Text(text:String, tx:Transform, font:String, size:Single, flags:sandbox.TextFlag):Void;
    function WorldText(text:String, tx:Transform, font:String, size:Single, flags:sandbox.TextFlag):Void;
}
