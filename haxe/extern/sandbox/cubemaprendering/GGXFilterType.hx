package sandbox.cubemaprendering;

/** Specifies the quality level for GGX filtering of environment maps. */
@:native("Sandbox.CubemapRendering.GGXFilterType")
extern enum abstract GGXFilterType(Int) {
    var Fast;
    var Quality;
}
