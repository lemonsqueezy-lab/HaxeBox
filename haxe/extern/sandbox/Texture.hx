package sandbox;

/** A texture is an image used in rendering. Can be a static texture loaded from disk, or a dynamic texture rendered to by code. Can also be 2D, 3D (multiple slices), or a cube texture (6 slices). */
@:native("Sandbox.Texture")
extern class Texture {
    /** Whether this texture is an error or invalid or not. */
    var IsError(default,never):Bool;
    var IsValid(default,never):Bool;
    /** Flags providing hints about this texture */
    var Flags(default,default):sandbox.TextureFlags;
    /** Texture index. Bit raw dog and needs a higher level abstraction. */
    var Index(default,never):Int;
    /** Width of the texture in pixels. */
    var Width(default,never):Int;
    /** Height of the texture in pixels. */
    var Height(default,never):Int;
    /** Depth of a 3D texture in pixels, or slice count for 2D texture arrays, or 6 for slices of cubemap. */
    var Depth(default,never):Int;
    /** Number of mip maps this texture has. */
    var Mips(default,never):Int;
    /** Returns a Vector2 representing the size of the texture (width, height) */
    var Size(default,never):Vector2;
    /** Whether this texture has finished loading or not. */
    var IsLoaded(default,never):Bool;
    /** Image format of this texture. */
    var ImageFormat(default,never):sandbox.ImageFormat;
    /** Returns how many frames ago this texture was last used by the renderer */
    var LastUsed(default,never):Int;
    /** Gets if the texture has UAV access */
    var UAVAccess(default,never):Bool;
    /** If this texture is a sprite sheet, will return information about the sheet, which is generally used in the shader. You don't really need to think about the contents. */
    var SequenceData(default,never):Vector4;
    /** The count of sequences in this texture, if any. The rest of the sequence data is encoded into the texture itself. */
    var SequenceCount(default,never):Int;
    var HasAnimatedSequences(default,never):Bool;
    /** 1x1 solid magenta colored texture. */
    static var Invalid(default,never):sandbox.Texture;
    /** 1x1 solid white opaque texture. */
    static var White(default,never):sandbox.Texture;
    /** 1x1 solid black opaque texture. */
    static var Black(default,never):sandbox.Texture;
    /** 1x1 fully transparent texture. */
    static var Transparent(default,never):sandbox.Texture;
    /** ID of this resource, */
    @:protected
    var ResourceId(default,null):Int;
    /** Path to this resource. */
    @:protected
    var ResourcePath(default,null):String;
    /** File name of the resource without the extension. */
    @:protected
    var ResourceName(default,null):String;
    /** True if this resource has been changed but the changes aren't written to disk */
    var HasUnsavedChanges(default,never):Bool;
    /** Embedded data for this resource */
    var EmbeddedResource(default,default):Null<sandbox.resources.EmbeddedResource>;
    /** Clear this texture with a solid color */
    function Clear(color:Color):Void;
    /** Begins creation of a custom texture. Finish by calling . */
    static function Create(width:Int, height:Int, format:sandbox.ImageFormat):sandbox.Texture2DBuilder;
    /** Begins creation of a custom texture array. Finish by calling . */
    static function CreateArray(width:Int, height:Int, count:Int, format:sandbox.ImageFormat):sandbox.TextureArrayBuilder;
    /** Begins creation of a custom cube texture. (A texture with 6 sides) Finish by calling . */
    static function CreateCube(width:Int, height:Int, format:sandbox.ImageFormat):sandbox.TextureCubeBuilder;
    /** Begins creation of a custom texture. Finish by calling . */
    static function CreateCustom():sandbox.TextureBuilder;
    /** Create a texture from an SVG source */
    static function CreateFromSvgSource(svgContents:String, width:Null<Int>, height:Null<Int>, color:Null<Color>):sandbox.Texture;
    /** Begins creation of a render target. Finish by calling . */
    static overload function CreateRenderTarget():sandbox.TextureBuilder;
    static overload function CreateRenderTarget(name:String, format:sandbox.ImageFormat, size:Vector2):sandbox.Texture;
    static overload function CreateRenderTarget(name:String, format:sandbox.ImageFormat, size:Vector2, oldTexture:sandbox.Texture):sandbox.Texture;
    /** Begins creation of a custom 3D texture. Finish by calling . */
    static function CreateVolume(width:Int, height:Int, depth:Int, format:sandbox.ImageFormat):sandbox.Texture3DBuilder;
    /** Will release the handle for this texture. If the texture isn't referenced by anything else it'll be released properly. This will happen anyway because it's called in the destructor. By calling it manually you're just telling the engine you're done with this texture right now instead of waiting for the garbage collector. */
    function Dispose():Void;
    @:protected function Finalize():Void;
    /** Try to get an already loaded texture. */
    static function Find(filepath:String):sandbox.Texture;
    function GetBitmap(mip:Int):sandbox.Bitmap;
    /** Asynchronously reads the texture into a bitmap at the specified mip level. */
    function GetBitmapAsync(callback:system.Action1<sandbox.Bitmap>, mip:Int):Void;
    /** Reads a single pixel color. */
    function GetPixel(x:Single, y:Single, mip:Int):Color32;
    /** Reads a single pixel color from a volume or array texture. */
    function GetPixel3D(x:Single, y:Single, z:Single, mip:Int):Color32;
    /** Reads pixel colors from the texture at the specified mip level */
    overload function GetPixels(mip:Int):Array<Color32>;
    overload function GetPixels<T>(srcRect:system.ValueTuple4<Int,Int,Int,Int>, slice:Int, mip:Int, dstData:system.Span<T>, dstFormat:sandbox.ImageFormat, dstSize:system.ValueTuple2<Int,Int>):Void;
    overload function GetPixels<T>(srcRect:system.ValueTuple4<Int,Int,Int,Int>, slice:Int, mip:Int, dstData:system.Span<T>, dstFormat:sandbox.ImageFormat, dstRect:system.ValueTuple4<Int,Int,Int,Int>, dstStride:Int):Void;
    function GetPixels3D<T>(srcBox:system.ValueTuple6<Int,Int,Int,Int,Int,Int>, mip:Int, dstData:system.Span<T>, dstFormat:sandbox.ImageFormat, dstSize:system.ValueTuple3<Int,Int,Int>):Void;
    /** Asynchronously reads all pixel colors from the texture at the specified mip level. */
    overload function GetPixelsAsync(callback:system.Action1<system.ReadOnlySpan<Color32>>, mip:Int):Void;
    overload function GetPixelsAsync<T>(callback:system.Action1<system.ReadOnlySpan<T>>, dstFormat:sandbox.ImageFormat, srcRect:system.ValueTuple4<Int,Int,Int,Int>, slice:Int, mip:Int):Void;
    function GetPixelsAsync3D<T>(callback:system.Action1<system.ReadOnlySpan<T>>, dstFormat:sandbox.ImageFormat, srcBox:system.ValueTuple6<Int,Int,Int,Int,Int,Int>, mip:Int):Void;
    /** Get the frame count for this sequence */
    function GetSequenceFrameCount(sequenceId:Int):Int;
    /** Try to load a texture. */
    static overload function Load(path_or_url:String, warnOnMissing:Bool):sandbox.Texture;
    static overload function Load(filesystem:sandbox.BaseFileSystem, filepath:String, warnOnMissing:Bool):sandbox.Texture;
    /** Load a texture asynchronously. Will return when the texture is loaded and valid. This is useful when loading textures from the web, or without any big loading hitches. */
    static overload function LoadAsync(filepath:String, warnOnMissing:Bool):system.threading.tasks.Task1<sandbox.Texture>;
    static overload function LoadAsync(filesystem:sandbox.BaseFileSystem, filepath:String, warnOnMissing:Bool):system.threading.tasks.Task1<sandbox.Texture>;
    /** Load avatar image of a Steam user (with a certain size if supplied). */
    static overload function LoadAvatar(steamid:String, size:Int):sandbox.Texture;
    static overload function LoadAvatar(steamid:haxe.Int64, size:Int):sandbox.Texture;
    /** Try to load a texture from given filesystem, by filename. */
    static function LoadFromFileSystem(filepath:String, filesystem:sandbox.BaseFileSystem, warnOnMissing:Bool):sandbox.Texture;
    /** Load a texture asynchronously. Will return when the texture is loaded and valid. This is useful when loading textures from the web, or without any big loading hitches. */
    static function LoadFromFileSystemAsync(filepath:String, filesystem:sandbox.BaseFileSystem, warnOnMissing:Bool):system.threading.tasks.Task1<sandbox.Texture>;
    /** Tells texture streaming this texture is being used. This is usually automatic, but useful for bindless pipelines. */
    function MarkUsed(requiredMipSize:Int):Void;
    /** Creates a VTEX file from this texture. */
    function SaveToVtex(uncompressed:Bool):Array<Int>;
    /** Asynchronously saves the current data to the VTEX platform and returns the resulting byte array. */
    function SaveToVtexAsync():system.threading.tasks.Task1<Array<Int>>;
    /** Update this texture from the bitmap */
    overload function Update(source:sandbox.Bitmap):Void;
    overload function Update(color:Color32, rect:sandbox.Rect):Void;
    overload function Update(color:Color32, x:Single, y:Single):Void;
    overload function Update(data:system.ReadOnlySpan<Color32>, x:Int, y:Int, width:Int, height:Int):Void;
    overload function Update(data:system.ReadOnlySpan<Int>, x:Int, y:Int, width:Int, height:Int):Void;
    overload function Update<T>(data:system.ReadOnlySpan<T>, x:Int, y:Int, width:Int, height:Int):Void;
    /** Update this 3D texture with given raw data. */
    function Update3D(data:system.ReadOnlySpan<Int>, x:Int, y:Int, z:Int, width:Int, height:Int, depth:Int):Void;
}
