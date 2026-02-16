package sandbox;

/** This choices type is bitflags, so we should be able to choose more than one option at a time. */
@:native("Sandbox.BitFlagsAttribute")
extern class BitFlagsAttribute extends sandbox.FGDTypeAttribute {
    function new():Void;
}
