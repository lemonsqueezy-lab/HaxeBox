package sandbox.resources;

@:native("Sandbox.Resources.TextureGenerator")
extern class TextureGenerator extends sandbox.resources.ResourceGenerator<sandbox.Texture> {
    @:protected function new():Void;
    /** Create a texture. Will replace a placeholder texture, which will turn into the generated texture later, if it's not immediately available. */
    function Create(options:sandbox.resources.resourcegenerator.Options):sandbox.Texture;
    /** Create a texture. Will wait until the texture is fully loaded and return when done. */
    function CreateAsync(options:sandbox.resources.resourcegenerator.Options, token:system.threading.CancellationToken):system.threading.tasks.ValueTask1<sandbox.Texture>;
    function CreateEmbeddedResource():Null<sandbox.resources.EmbeddedResource>;
    /** Find an existing texture for this */
    @:protected function CreateTexture(options:sandbox.resources.resourcegenerator.Options, ct:system.threading.CancellationToken):system.threading.tasks.ValueTask1<sandbox.Texture>;
}
