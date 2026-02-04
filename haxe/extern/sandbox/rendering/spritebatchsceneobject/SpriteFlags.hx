package sandbox.rendering.spritebatchsceneobject;

/** Flags for sprite rendering, must match SpriteFlags in sprite_ps.shader */
@:native("Sandbox.Rendering.SpriteBatchSceneObject.SpriteFlags")
extern enum abstract SpriteFlags(Int) {
    var None;
    var CastShadows;
    var FlipX;
    var FlipY;
    var SnapToFrame;
}
