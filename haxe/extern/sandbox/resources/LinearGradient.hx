package sandbox.resources;

@:native("Sandbox.Resources.LinearGradient")
extern class LinearGradient extends sandbox.resources.TextureGenerator {
    function new():Void;
    var Size(default,default):Vector2Int;
    var IsHdr(default,default):Bool;
    var Angle(default,default):Single;
    var Scale(default,default):Single;
    var Center(default,default):Vector2;
    var Gradient(default,default):sandbox.Gradient;
    var ConvertHeightToNormals(default,default):Bool;
    var NormalScale(default,default):Single;
    @:protected function CreateTexture(options:sandbox.resources.resourcegenerator.Options, ct:system.threading.CancellationToken):system.threading.tasks.ValueTask1<sandbox.Texture>;
}
