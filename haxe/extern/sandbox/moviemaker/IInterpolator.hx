package sandbox.moviemaker;

@:native("Sandbox.MovieMaker.IInterpolator`1")
extern class IInterpolator<T> {
    function Interpolate(a:T, b:T, t:Single):T;
}
