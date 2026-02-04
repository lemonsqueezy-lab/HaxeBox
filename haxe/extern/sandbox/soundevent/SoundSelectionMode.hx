package sandbox.soundevent;

@:native("Sandbox.SoundEvent.SoundSelectionMode")
extern enum abstract SoundSelectionMode(Int) {
    var Forward;
    var Backward;
    var Random;
    var RandomExclusive;
}
