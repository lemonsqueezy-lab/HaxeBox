package sandbox;

/** Base interface for components that can be grouped for sprite rendering. Contains the 4 fields needed for render group classification. */
@:native("Sandbox.ISpriteRenderGroup")
extern class ISpriteRenderGroup {
    var Opaque(default,never):Bool;
    var Additive(default,never):Bool;
    var Shadows(default,never):Bool;
    var IsSorted(default,never):Bool;
}
