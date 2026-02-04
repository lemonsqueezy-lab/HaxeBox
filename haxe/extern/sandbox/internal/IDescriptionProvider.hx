package sandbox.internal;

/** Provides a description for DisplayInfo of a member or a type. */
@:native("Sandbox.Internal.IDescriptionProvider")
extern class IDescriptionProvider {
    /** The description. */
    var Value(default,never):String;
}
