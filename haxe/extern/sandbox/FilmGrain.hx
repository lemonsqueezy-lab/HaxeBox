package sandbox;

/** Applies a film grain effect to the camera */
@:native("Sandbox.FilmGrain")
final extern class FilmGrain extends sandbox.BasePostProcess<sandbox.FilmGrain> {
    function new():Void;
    var Intensity(default,default):Single;
    var Response(default,default):Single;
    function Render():Void;
}
