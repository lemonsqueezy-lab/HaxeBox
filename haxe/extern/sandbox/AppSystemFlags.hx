package sandbox;

@:native("Sandbox.AppSystemFlags")
extern enum abstract AppSystemFlags(Int) {
    var None;
    var IsConsoleApp;
    var IsGameApp;
    var IsDedicatedServer;
    var IsStandaloneGame;
    var IsEditor;
    var IsUnitTest;
}
