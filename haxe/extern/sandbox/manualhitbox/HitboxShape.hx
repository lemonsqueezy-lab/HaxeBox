package sandbox.manualhitbox;

@:native("Sandbox.ManualHitbox.HitboxShape")
extern enum abstract HitboxShape(Int) {
    var Sphere;
    var Capsule;
    var Box;
    var Cylinder;
}
