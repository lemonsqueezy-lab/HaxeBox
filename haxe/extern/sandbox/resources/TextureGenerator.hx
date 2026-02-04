package sandbox.resources;

@:native("Sandbox.Resources.TextureGenerator")
extern class TextureGenerator {
    var UseMemoryCache(default,never):Bool;
    /** If true then the generation will create a real resource and store it on disk. Use this if creating the resource takes a while, or you won't be shipping the generator with the game, or if it relies on data that won't be available in the shipped game. */
    var CacheToDisk(default,never):Bool;
    /** Create a texture. Will replace a placeholder texture, which will turn into the generated texture later, if it's not immediately available. */
    function Create(options:sandbox.resources.resourcegenerator.Options):sandbox.Texture;
    /** Create a texture. Will wait until the texture is fully loaded and return when done. */
    function CreateAsync(options:sandbox.resources.resourcegenerator.Options, token:system.threading.CancellationToken):system.threading.tasks.ValueTask1<sandbox.Texture>;
    function CreateEmbeddedResource():Null<sandbox.resources.EmbeddedResource>;
    /** Find an existing texture for this */
    @:protected function CreateTexture(options:sandbox.resources.resourcegenerator.Options, ct:system.threading.CancellationToken):system.threading.tasks.ValueTask1<sandbox.Texture>;
}
