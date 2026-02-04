package sandbox;

@:native("Sandbox.TextRendering")
final extern class TextRendering {
    static function GetOrCreateTexture(scope:sandbox.textrendering.Scope, clip:Vector2, flag:sandbox.TextFlag):sandbox.Texture;
}
