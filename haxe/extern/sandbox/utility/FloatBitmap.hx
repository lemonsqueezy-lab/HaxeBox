package sandbox.utility;

@:native("Sandbox.Utility.FloatBitmap")
extern class FloatBitmap {
    var Width(default,never):Int;
    var Height(default,never):Int;
    var Depth(default,never):Int;
    function Dispose():Void;
    function EncodeTo(format:sandbox.ImageFormat):Array<Int>;
    @:protected function Finalize():Void;
    function Resize(width:Int, height:Int, clamp:Bool):Void;
}
