package sandbox.indirectlightvolume;

/** Behavior when a probe is detected inside geometry. Relocation moves the probe out of geometry to reduce artifacts, while Deactivate simply disables the occluded probe, sealing leaks entirely. */
@:native("Sandbox.IndirectLightVolume.InsideGeometryBehavior")
extern enum abstract InsideGeometryBehavior(Int) {
    var Deactivate;
    var Relocate;
}
