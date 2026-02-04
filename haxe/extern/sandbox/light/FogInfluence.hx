package sandbox.light;

@:native("Sandbox.Light.FogInfluence")
extern enum abstract FogInfluence(Int) {
    var Disabled;
    var Enabled;
    var WithoutShadows;
}
