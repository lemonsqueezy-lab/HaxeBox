package sandbox.rendering;

/** 2D Drawing functions for a . HudPainter provides a set of methods for drawing shapes, textures, and text onto a command list, typically for HUD or UI rendering. */
@:native("Sandbox.Rendering.HudPainter")
final extern class HudPainter {
    /** Initializes a new instance of the struct for the specified . */
    function new(commandList:sandbox.rendering.CommandList):Void;
    var list(default,never):sandbox.rendering.CommandList;
    /** Draws a filled circle at the specified position and size. */
    function DrawCircle(position:Vector2, size:Vector2, color:Color):Void;
    /** Draws a line between two points with the specified width and color. */
    function DrawLine(a:Vector2, b:Vector2, width:Single, color:Color, corners:Vector4):Void;
    function DrawRect(rect:sandbox.Rect, color:Color, cornerRadius:Vector4, borderWidth:Vector4, borderColor:Color):Void;
    /** Draws text at a 3D point with the specified size, color, and alignment flags. */
    overload function DrawText(scope:sandbox.textrendering.Scope, point:Vector2, flags:sandbox.TextFlag):sandbox.Rect;
    overload function DrawText(scope:sandbox.textrendering.Scope, rect:sandbox.Rect, flags:sandbox.TextFlag):sandbox.Rect;
    overload function DrawText(text:String, size:Single, color:Color, point:Vector2, flags:sandbox.TextFlag):Void;
    overload function DrawText(text:String, size:Single, color:Color, rect:sandbox.Rect, flags:sandbox.TextFlag):Void;
    /** Draws a texture in the specified rectangle with a white tint. */
    overload function DrawTexture(texture:sandbox.Texture, rect:sandbox.Rect):Void;
    overload function DrawTexture(texture:sandbox.Texture, rect:sandbox.Rect, tint:Color):Void;
    /** Sets the blend mode for subsequent drawing operations. */
    function SetBlendMode(mode:sandbox.BlendMode):Void;
    /** Sets the transformation matrix for subsequent drawing operations. */
    function SetMatrix(matrix:Matrix):Void;
}
