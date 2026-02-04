package sandbox.scenelight;

@:native("Sandbox.SceneLight.LightShape")
extern enum abstract LightShape(Int) {
    var Sphere;
    var Capsule;
    var Rectangle;
}
