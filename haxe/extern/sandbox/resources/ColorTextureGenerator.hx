package sandbox.resources;

/** Generate a texture which is just a single color */
@:native("Sandbox.Resources.ColorTextureGenerator")
extern class ColorTextureGenerator {
    function new():Void;
    var Color(default,default):Color;
    var UseMemoryCache(default,never):Bool;
    /** If true then the generation will create a real resource and store it on disk. Use this if creating the resource takes a while, or you won't be shipping the generator with the game, or if it relies on data that won't be available in the shipped game. */
    var CacheToDisk(default,never):Bool;
    @:protected function CreateTexture(options:sandbox.resources.resourcegenerator.Options, ct:system.threading.CancellationToken):system.threading.tasks.ValueTask1<sandbox.Texture>;
}
