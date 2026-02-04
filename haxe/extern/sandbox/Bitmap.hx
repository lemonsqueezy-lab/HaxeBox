package sandbox;

@:native("Sandbox.Bitmap")
final extern class Bitmap {
    function new(width:Int, height:Int, floatingPoint:Bool):Void;
    var Width(default,never):Int;
    var Height(default,never):Int;
    var BytesPerPixel(default,never):Int;
    var ByteCount(default,never):Int;
    var Rect(default,never):sandbox.Rect;
    /** The width and height of the bitmap */
    var Size(default,never):Vector2Int;
    var Center(default,never):Vector2;
    var IsFloatingPoint(default,default):Bool;
    var IsValid(default,never):Bool;
    /** Adjusts brightness, contrast, and saturation in one pass. */
    function Adjust(brightness:Single, contrast:Single, saturation:Single, hueDegrees:Single):Void;
    /** Adjusts the hue of the bitmap. */
    function AdjustHue(angle:Single):Void;
    /** Applies a Gaussian blur effect to the current bitmap. */
    function Blur(radius:Single, tileClamp:Bool):Void;
    /** Clears the bitmap to the specified color. */
    function Clear(color:Color):Void;
    /** Copy the bitmap to a new one without any changes. */
    function Clone():sandbox.Bitmap;
    /** Color the bitmap using this color, respect alpha */
    function Colorize(color:Color):Void;
    /** Loads a bitmap from the specified byte array. */
    static function CreateFromBytes(data:Array<Int>):sandbox.Bitmap;
    static function CreateFromIesBytes(data:Array<Int>):sandbox.Bitmap;
    /** Creates a Bitmap instance from PSD file data. */
    static function CreateFromPsdBytes(data:Array<Int>):sandbox.Bitmap;
    /** Create a bitmap from an SVG, with optional size */
    static function CreateFromSvgString(svgContents:String, width:Null<Int>, height:Null<Int>, scale:Null<Vector2>, offset:Null<Vector2>, rotation:Null<Single>):sandbox.Bitmap;
    static function CreateFromTgaBytes(data:Array<Int>):sandbox.Bitmap;
    static function CreateFromTifBytes(data:Array<Int>):sandbox.Bitmap;
    /** Crops the bitmap to the specified rectangle. */
    function Crop(rect:sandbox.Rect):sandbox.Bitmap;
    function Dispose():Void;
    /** Draws an arc using the current pen settings. */
    overload function DrawArc(rect:sandbox.Rect, startAngle:Single, sweepAngle:Single):Void;
    overload function DrawArc(rect:sandbox.Rect, startAngle:Single, sweepAngle:Single, useCenter:Bool):Void;
    /** Draws another bitmap onto this bitmap. */
    function DrawBitmap(bitmap:sandbox.Bitmap, destRect:sandbox.Rect):Void;
    /** Draws a circle using the current pen settings. */
    overload function DrawCircle(center:Vector2, radius:Single):Void;
    overload function DrawCircle(x:Single, y:Single, radius:Single):Void;
    /** Draws a line using the current pen settings. */
    function DrawLine(start:Vector2, end:Vector2):Void;
    /** Draws connected lines through a series of points using the current pen settings. */
    function DrawLines(points:Array<Vector2>):Void;
    /** Draws a polygon using the current pen settings. */
    function DrawPolygon(points:Array<Vector2>):Void;
    /** Draws a rectangle using the current pen settings. */
    overload function DrawRect(rect:sandbox.Rect):Void;
    overload function DrawRect(x:Single, y:Single, width:Single, height:Single):Void;
    /** Draws a rectangle using the current pen settings. */
    function DrawRoundRect(rect:sandbox.Rect, margins:sandbox.ui.Margin):Void;
    /** Draws text onto this bitmap */
    function DrawText(scope:sandbox.textrendering.Scope, rect:sandbox.Rect, flags:sandbox.TextFlag):Void;
    /** Flips the bitmap horizontally. */
    function FlipHorizontal():sandbox.Bitmap;
    /** Flips the bitmap vertically. */
    function FlipVertical():sandbox.Bitmap;
    /** Retrieves the color of a specific pixel in the bitmap. */
    function GetPixel(x:Int, y:Int):Color;
    /** Retrieves the pixel data of the bitmap as an array of colors. */
    function GetPixels():Array<Color>;
    /** Retrieves the pixel data of the bitmap as an array of colors. */
    function GetPixels16():Array<color.Rgba16>;
    /** Retrieves the pixel data of the bitmap as an array of colors. */
    function GetPixels32():Array<Color32>;
    /** Converts a heightmap to a normal map using parallel processing. */
    function HeightmapToNormalMap(strength:Single):sandbox.Bitmap;
    /** Shrink the image by adding padding all around - without resizing the bitmap */
    function InsertPadding(margin:sandbox.ui.Margin):Void;
    /** Inverts the colors of the bitmap while preserving alpha. */
    function InvertColor():Void;
    /** Return true if this data is a Ies file */
    static function IsIes(data:Array<Int>):Bool;
    /** Returns true if this bitmap is completely opaque (no alpha) This does a pixel by pixel search, so it's not the fastest. */
    function IsOpaque():Bool;
    /** Checks if the provided byte array is a valid PSD file. */
    static function IsPsd(data:Array<Int>):Bool;
    /** Return true if this data is a Tga file */
    static function IsTga(data:Array<Int>):Bool;
    static function IsTif(data:system.ReadOnlySpan<Int>):Bool;
    /** Resizes the bitmap to the specified dimensions and returns a new bitmap. */
    function Resize(newWidth:Int, newHeight:Int, smooth:Bool):sandbox.Bitmap;
    /** Rotates the bitmap by the specified angle. */
    function Rotate(degrees:Single):sandbox.Bitmap;
    /** Sets the pen for drawing with a solid color and stroke style. */
    function SetAntialias(on:Bool):Void;
    /** Sets the pen to use a specific blend mode. */
    function SetBlendMode(blendMode:sandbox.BlendMode):Void;
    /** Sets the pen for drawing dashed or dotted lines. */
    function SetDashedPen(color:Color, width:Single, dashPattern:Array<Single>):Void;
    /** Sets the pen for drawing filled shapes with a solid color. */
    function SetFill(color:Color):Void;
    /** Sets the pen for drawing with a linear gradient. */
    function SetLinearGradient(start:Vector2, end:Vector2, gradient:sandbox.Gradient):Void;
    /** Sets the pen for drawing with a solid color and stroke style. */
    function SetPen(color:Color, width:Single):Void;
    /** Sets the color of a specific pixel in the bitmap. */
    function SetPixel(x:Int, y:Int, color:Color):Void;
    function SetPixels(colors:Array<Color>):Void;
    /** Sets the pen for drawing with a radial gradient. */
    function SetRadialGradient(center:Vector2, radius:Single, gradient:sandbox.Gradient):Void;
    /** Applies a Gaussian blur effect to the current bitmap. */
    function Sharpen(amount:Single, tileClamp:Bool):Void;
    /** Tint the bitmap using this color, respect alpha */
    function Tint(color:Color):Void;
    /** Exports the bitmap as a BMP byte array. */
    function ToBmp():Array<Int>;
    /** Exports the bitmap to the specified engine format */
    function ToFormat(format:sandbox.ImageFormat):Array<Int>;
    /** Exports the bitmap as a JPEG byte array with the specified quality. */
    function ToJpg(quality:Int):Array<Int>;
    /** Exports the bitmap as a PNG byte array. */
    function ToPng():Array<Int>;
    /** Try to create a texture from this bitmap */
    function ToTexture(mips:Bool):sandbox.Texture;
    /** Exports the bitmap as an HDR WebP byte array with the specified quality. */
    function ToWebP(quality:Int):Array<Int>;
}
