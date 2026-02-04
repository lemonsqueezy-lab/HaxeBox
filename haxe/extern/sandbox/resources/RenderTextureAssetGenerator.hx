package sandbox.resources;

/** Provides a texture generator entry that returns the texture owned by a RenderTexture asset. */
@:native("Sandbox.Resources.RenderTextureAssetGenerator")
final extern class RenderTextureAssetGenerator {
    function new():Void;
    /** The render texture asset to reference. */
    var Asset(default,default):sandbox.RenderTextureAsset;
    var UseMemoryCache(default,never):Bool;
    /** If true then the generation will create a real resource and store it on disk. Use this if creating the resource takes a while, or you won't be shipping the generator with the game, or if it relies on data that won't be available in the shipped game. */
    var CacheToDisk(default,never):Bool;
    @:protected function CreateTexture(options:sandbox.resources.resourcegenerator.Options, ct:system.threading.CancellationToken):system.threading.tasks.ValueTask1<sandbox.Texture>;
}
