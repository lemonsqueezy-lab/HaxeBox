package sandbox;

@:native("Sandbox.MultisampleAmount")
extern enum abstract MultisampleAmount(Int) {
    var Multisample2x;
    var Multisample4x;
    var Multisample6x;
    var Multisample8x;
    var Multisample16x;
    var MultisampleScreen;
    var MultisampleNone;
}
