package sandbox.internal;

/** Provides placeholder text for DisplayInfo of a member or a type. */
@:native("Sandbox.Internal.IPlaceholderProvider")
extern class IPlaceholderProvider {
    /** The placeholder text. */
    var Value(default,never):String;
}
