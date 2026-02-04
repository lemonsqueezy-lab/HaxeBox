package sandbox.moviemaker;

/** An editor-only movie project that can be compiled into a . */
@:native("Sandbox.MovieMaker.IMovieProject")
extern class IMovieProject {
    /** Compile this project into a playable . */
    function Compile():sandbox.moviemaker.compiled.MovieClip;
}
