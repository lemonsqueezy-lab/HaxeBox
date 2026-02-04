package sandbox;

@:native("Sandbox.PhysicsContact")
final extern class PhysicsContact {
    var Point(default,never):Vector3;
    var Speed(default,never):Vector3;
    var Normal(default,never):Vector3;
    var NormalSpeed(default,never):Single;
    var Impulse(default,never):Single;
}
