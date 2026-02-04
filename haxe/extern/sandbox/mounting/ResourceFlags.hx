package sandbox.mounting;

/** Allows hinting about resources, how they can be used */
@:native("Sandbox.Mounting.ResourceFlags")
extern enum abstract ResourceFlags(Int) {
    var DeveloperOnly;
    var NeverRagdoll;
    var Effect;
}
