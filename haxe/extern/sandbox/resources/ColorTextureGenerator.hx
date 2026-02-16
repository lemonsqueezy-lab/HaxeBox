package sandbox.resources;

/** Generate a texture which is just a single color */
@:native("Sandbox.Resources.ColorTextureGenerator")
extern class ColorTextureGenerator extends sandbox.resources.TextureGenerator {
    function new():Void;
    var Color(default,default):Color;
    @:protected function CreateTexture(options:sandbox.resources.resourcegenerator.Options, ct:system.threading.CancellationToken):system.threading.tasks.ValueTask1<sandbox.Texture>;
}
