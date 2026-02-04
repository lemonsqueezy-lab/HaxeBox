package sandbox.resources;

/** Load images from disk and convert them to textures */
@:native("Sandbox.Resources.ImageFileGenerator")
extern class ImageFileGenerator {
    function new():Void;
    /** The path to the image file, relative to any other assets in the project. */
    var FilePath(default,default):String;
    /** The maximum size of the image in pixels. If the imported image is larger than this (after cropping), it will be downscaled to fit. */
    var MaxSize(default,default):Int;
    /** When enabled, the output texture will be a normal map generated from the heightmap of the image. */
    var ConvertHeightToNormals(default,default):Bool;
    /** The scale of the normal map when using . If negative, the normal map will be inverted. */
    var NormalScale(default,default):Single;
    /** How much to rotate the image by, in degrees. This is applied after cropping and padding. */
    var Rotate(default,default):Single;
    /** Whether or not to flip the image vertically. This is done after everything else has been applied. */
    var FlipVertical(default,default):Bool;
    /** Whether or not to flip the image horizontally. This is done after everything else has been applied. */
    var FlipHorizontal(default,default):Bool;
    /** How many pixels from each edge to crop from the image. If negative values are used, the image will be expanded instead of cropped. */
    var Cropping(default,default):sandbox.ui.Margin;
    /** How many pixels of padding from each edge. After the image has been cropped, padding is added without affecting the size of the image (scaling the original image down to fit padded margins). */
    var Padding(default,default):sandbox.ui.Margin;
    /** Whether or not to invert the colors of the image. */
    var InvertColor(default,default):Bool;
    /** The color the image should be tinted. This effectively multiplies the color of each pixel by this color (including alpha). */
    var Tint(default,default):Color;
    /** The intensity of the blur effect. If 0, no blur is applied. */
    var Blur(default,default):Single;
    /** The intensity of the sharpen effect. If 0, no sharpening is applied. */
    var Sharpen(default,default):Single;
    /** The brightness of the image. */
    var Brightness(default,default):Single;
    /** The contrast of the image. */
    var Contrast(default,default):Single;
    /** The saturation of the image. */
    var Saturation(default,default):Single;
    /** How much to adjust the hue of the image, in degrees. If 0, no hue adjustment is applied. */
    var Hue(default,default):Single;
    /** When enabled, every pixel in the image will be re-colored to the (interpolated by the alpha). */
    var Colorize(default,default):Bool;
    /** When is enabled, this is the target color that every pixel in the image will be re-colored to. */
    var TargetColor(default,default):Color;
    var CacheToDisk(default,never):Bool;
    var UseMemoryCache(default,never):Bool;
    function CreateEmbeddedResource():Null<sandbox.resources.EmbeddedResource>;
    @:protected function CreateTexture(options:sandbox.resources.resourcegenerator.Options, ct:system.threading.CancellationToken):system.threading.tasks.ValueTask1<sandbox.Texture>;
}
