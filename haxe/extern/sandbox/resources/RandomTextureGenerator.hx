package sandbox.resources;

@:native("Sandbox.Resources.RandomTextureGenerator")
extern class RandomTextureGenerator {
    function new():Void;
    var Type(default,default):sandbox.resources.randomtexturegenerator.NoiseType;
    var Seed(default,default):Int;
    var Size(default,default):Vector2Int;
    var Offset(default,default):Vector3;
    var Scale(default,default):Single;
    var Octaves(default,default):Int;
    var Gradient(default,default):sandbox.Gradient;
    var ConvertHeightToNormals(default,default):Bool;
    var NormalScale(default,default):Single;
    var CacheToDisk(default,never):Bool;
    var UseMemoryCache(default,never):Bool;
    @:protected function CreateTexture(options:sandbox.resources.resourcegenerator.Options, ct:system.threading.CancellationToken):system.threading.tasks.ValueTask1<sandbox.Texture>;
    static function IntToRandomFloat(seed:haxe.Int64):Single;
}
