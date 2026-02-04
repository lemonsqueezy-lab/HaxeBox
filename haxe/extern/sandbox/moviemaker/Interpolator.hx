package sandbox.moviemaker;

/** Helper for accessing implementations, for interpolating between two values of the same type */
@:native("Sandbox.MovieMaker.Interpolator")
final extern class Interpolator {
    /** Attempts to find a default interpolator for the given , returning if not found. */
    static function CanInterpolate(type:cs.system.Type):Bool;
    /** Attempts to find a default interpolator for type , returning if not found. */
    static function GetDefault<T>():sandbox.moviemaker.IInterpolator<T>;
    static function GetDefaultOrThrow<T>():sandbox.moviemaker.IInterpolator<T>;
}
