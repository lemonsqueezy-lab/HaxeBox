package sandbox.particleeffect;

@:native("Sandbox.ParticleEffect.TimingMode")
extern enum abstract TimingMode(Int) {
    var GameTime;
    var RealTime;
}
