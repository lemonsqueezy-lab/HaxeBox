package sandbox.scenecullingbox;

/** Cull mode, either inside or outside */
@:native("Sandbox.SceneCullingBox.CullMode")
extern enum abstract CullMode(Int) {
    var Inside;
    var Outside;
}
