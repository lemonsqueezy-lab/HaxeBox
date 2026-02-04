package sandbox.utility;

/** A noise function that can be sampled at a 1-, 2-, or 3D position. Samples will be between 0 and 1. Thread-safe. */
@:native("Sandbox.Utility.INoiseField")
extern class INoiseField {
    /** Sample at a 1D position. */
    overload function Sample(x:Single):Single;
    overload function Sample(vec:Vector2):Single;
    overload function Sample(vec:Vector3):Single;
    overload function Sample(x:Single, y:Single):Single;
    overload function Sample(x:Single, y:Single, z:Single):Single;
}
