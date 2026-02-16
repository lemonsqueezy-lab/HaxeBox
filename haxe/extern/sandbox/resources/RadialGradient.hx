package sandbox.resources;

@:native("Sandbox.Resources.RadialGradient")
extern class RadialGradient extends sandbox.resources.TextureGenerator {
    function new():Void;
    var Size(default,default):Vector2Int;
    var IsHdr(default,default):Bool;
    var Scale(default,default):Single;
    var Center(default,default):Vector2;
    var Gradient(default,default):sandbox.Gradient;
    var ConvertHeightToNormals(default,default):Bool;
    var NormalScale(default,default):Single;
    @:protected function CreateTexture(options:sandbox.resources.resourcegenerator.Options, ct:system.threading.CancellationToken):system.threading.tasks.ValueTask1<sandbox.Texture>;
}
