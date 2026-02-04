package sandbox.services;

@:native("Sandbox.Services.DevelopmentStage")
extern enum abstract DevelopmentStage(Int) {
    var Hidden;
    var Released;
}
