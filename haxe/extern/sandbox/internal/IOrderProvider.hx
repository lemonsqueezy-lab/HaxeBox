package sandbox.internal;

/** Provides an order number for DisplayInfo of a member or a type. */
@:native("Sandbox.Internal.IOrderProvider")
extern class IOrderProvider {
    /** Order value, for sorting in menus. */
    var Value(default,never):Int;
}
