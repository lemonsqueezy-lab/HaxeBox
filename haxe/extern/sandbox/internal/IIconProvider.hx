package sandbox.internal;

/** Provides an icon for DisplayInfo of a member or a type. */
@:native("Sandbox.Internal.IIconProvider")
extern class IIconProvider {
    /** The icon. Typically this is the name of a material icon. */
    var Value(default,never):String;
}
