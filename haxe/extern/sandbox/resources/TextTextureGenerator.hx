package sandbox.resources;

@:native("Sandbox.Resources.TextTextureGenerator")
extern class TextTextureGenerator extends sandbox.resources.TextureGenerator {
    function new():Void;
    var Size(default,default):Vector2Int;
    var Margin(default,default):sandbox.ui.Margin;
    var TextFlags(default,default):sandbox.TextFlag;
    var TextScope(default,default):sandbox.textrendering.Scope;
    @:protected function CreateTexture(options:sandbox.resources.resourcegenerator.Options, ct:system.threading.CancellationToken):system.threading.tasks.ValueTask1<sandbox.Texture>;
    function ToString():String;
}
