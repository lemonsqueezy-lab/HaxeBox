package sandbox;

@:native("Sandbox.IDynamicFloatContext")
extern class IDynamicFloatContext {
    /** Should return the lifetime delta we're going to use to evaluate */
    var LifetimeDelta(default,never):Single;
    /** Should return the seed we're using for randomness */
    var RandomSeed(default,never):Int;
}
