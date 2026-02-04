package sandbox.resources.vtexwriter;

@:native("Sandbox.Resources.VTexWriter.TextureLayer")
extern class TextureLayer {
    function new():Void;
    var Bitmap(default,default):sandbox.Bitmap;
    var Opaque(default,default):Bool;
    var Mip(default,default):Int;
    var Face(default,default):Int;
    var Hdr(default,default):Bool;
    var IsPowerOfTwo(default,never):Bool;
}
