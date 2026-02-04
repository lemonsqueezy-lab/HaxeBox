package sandbox.engine;

@:native("Sandbox.Engine.GameLoadingFlags")
extern enum abstract GameLoadingFlags(Int) {
    var Remote;
    var Host;
    var Reload;
    var Developer;
}
