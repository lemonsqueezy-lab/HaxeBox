package;

@:native("SandboxSystemExtensions")
final extern class SandboxSystemExtensions {
    /** Returns false if model has no valid render meshes, or is null. */
    static function HasRenderMeshes(model:sandbox.Model):Bool;
}
