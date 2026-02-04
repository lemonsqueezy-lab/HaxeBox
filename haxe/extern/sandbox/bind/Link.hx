package sandbox.bind;

/** Joins two proxies together, so one can be updated from the other (or both from each other) */
@:native("Sandbox.Bind.Link")
final extern class Link {
    /** This is updated in tick. Will return false if either binding is invalid. Bindings become invalid if the object is garbage collected or is an IValid and made invalid. */
    var IsValid(default,never):Bool;
    /** True if this should only update from left to right. */
    var OneWay(default,never):Bool;
    /** The primary binding. Changes to this value always take priority over the other. */
    var Left(default,never):sandbox.bind.Proxy;
    /** The secondary binding, if we're OneWay then this will only ever be written to. */
    var Right(default,never):sandbox.bind.Proxy;
    function ToString():String;
}
