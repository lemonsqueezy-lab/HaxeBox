package sandbox.resources;

@:native("Sandbox.Resources.SvgSourceGenerator")
extern class SvgSourceGenerator extends sandbox.resources.TextureGenerator {
    function new():Void;
    var Size(default,default):Vector2Int;
    var Source(default,default):String;
    var Colorize(default,default):Bool;
    var TargetColor(default,default):Color;
    var Scale(default,default):Single;
    var Offset(default,default):Vector2;
    var Rotate(default,default):Single;
    var FlipVertical(default,default):Bool;
    var FlipHorizontal(default,default):Bool;
    @:protected function CreateTexture(options:sandbox.resources.resourcegenerator.Options, ct:system.threading.CancellationToken):system.threading.tasks.ValueTask1<sandbox.Texture>;
}
