package sandbox.compiler;

@:native("Sandbox.Compiler.ReleaseMode")
extern enum abstract ReleaseMode(Int) {
    var Debug;
    var Release;
}
