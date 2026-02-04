package sandbox.engine.inputcontext;

@:native("Sandbox.Engine.InputContext.InputState")
extern enum abstract InputState(Int) {
    var Ignore;
    var UI;
    var Game;
}
