package sandbox.component;

/** A component that has bounds */
@:native("Sandbox.Component.IHasBounds")
extern class IHasBounds {
    /** Returns bounds, in local space */
    var LocalBounds(default,never):BBox;
}
