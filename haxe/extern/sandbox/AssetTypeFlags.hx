package sandbox;

/** Flags for */
@:native("Sandbox.AssetTypeFlags")
extern enum abstract AssetTypeFlags(Int) {
    var None;
    var NoEmbedding;
    var IncludeThumbnails;
}
