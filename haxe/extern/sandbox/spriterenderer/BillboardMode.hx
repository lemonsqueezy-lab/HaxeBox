package sandbox.spriterenderer;

@:native("Sandbox.SpriteRenderer.BillboardMode")
extern enum abstract BillboardMode(Int) {
    var Always;
    var YOnly;
    var Particle;
    var None;
}
