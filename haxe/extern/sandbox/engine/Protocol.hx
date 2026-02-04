package sandbox.engine;

/** A centralized place to access the protocols */
@:native("Sandbox.Engine.Protocol")
final extern class Protocol {
    /** We cannot play packages with an Api version higher than this. */
    static var Api(default,never):Int;
    /** We cannot talk to servers or clients with a network protocol different to this. */
    static var Network(default,never):Int;
}
