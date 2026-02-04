package sandbox.particletextrenderer;

@:native("Sandbox.ParticleTextRenderer.ParticleSortMode")
extern enum abstract ParticleSortMode(Int) {
    var Unsorted;
    var ByDistance;
}
