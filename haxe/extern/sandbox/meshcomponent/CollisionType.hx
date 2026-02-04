package sandbox.meshcomponent;

@:native("Sandbox.MeshComponent.CollisionType")
extern enum abstract CollisionType(Int) {
    var None;
    var Mesh;
    var Hull;
}
