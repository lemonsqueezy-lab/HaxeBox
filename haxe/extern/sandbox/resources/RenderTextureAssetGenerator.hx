package sandbox.resources;

/** Provides a texture generator entry that returns the texture owned by a RenderTexture asset. */
@:native("Sandbox.Resources.RenderTextureAssetGenerator")
final extern class RenderTextureAssetGenerator extends sandbox.resources.TextureGenerator {
    function new():Void;
    /** The render texture asset to reference. */
    var Asset(default,default):sandbox.RenderTextureAsset;
    @:protected function CreateTexture(options:sandbox.resources.resourcegenerator.Options, ct:system.threading.CancellationToken):system.threading.tasks.ValueTask1<sandbox.Texture>;
}
