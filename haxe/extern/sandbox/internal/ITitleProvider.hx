package sandbox.internal;

/** Provides a title or a "nice name" for DisplayInfo of a member or a type. */
@:native("Sandbox.Internal.ITitleProvider")
extern class ITitleProvider {
    /** The title. */
    var Value(default,never):String;
}
