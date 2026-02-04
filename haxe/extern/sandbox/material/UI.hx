package sandbox.material;

/** Static materials for UI rendering purposes. */
@:native("Sandbox.Material.UI")
final extern class UI {
    /** As basic 2D drawing material. Supports Texture and vertex color. */
    static var Basic(default,never):sandbox.Material;
    /** CSS Box rendering */
    static var Box(default,never):sandbox.Material;
}
