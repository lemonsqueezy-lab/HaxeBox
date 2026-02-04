package sandbox;

/** Defines acoustic properties of a surface, which defines how sound will bounce */
@:native("Sandbox.AudioSurface")
extern enum abstract AudioSurface(Int) {
    var Generic;
    var Brick;
    var Concrete;
    var Ceramic;
    var Gravel;
    var Carpet;
    var Glass;
    var Plaster;
    var Wood;
    var Metal;
    var Rock;
    var Fabric;
    var Foam;
    var Sand;
    var Snow;
    var Soil;
    var Curtain;
    var Steel;
    var AcousticTile;
    var Leather;
    var Linoleum;
    var Asphalt;
    var Water;
    var Marble;
    var Paper;
}
