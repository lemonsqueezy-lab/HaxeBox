package sandbox;

@:native("Sandbox.LogLevel")
extern enum abstract LogLevel(Int) {
    var Trace;
    var Info;
    var Warn;
    var Error;
}
