package sandbox.internal;

/** Provides category or group for DisplayInfo of a member or a type. */
@:native("Sandbox.Internal.ICategoryProvider")
extern class ICategoryProvider {
    /** The category. */
    var Value(default,never):String;
}
