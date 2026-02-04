package sandbox;

/** Strings are commonly converted to tokens in engine, to save space and speed up things like comparisons. We wrap this functionality up in the StringToken struct, because we can apply a bunch of compile time optimizations to speed up the conversion. */
@:native("Sandbox.StringToken")
final extern class StringToken {
    overload function new(value:String):Void;
    overload function new(token:UInt):Void;
    var Value(default,set):UInt;

    private inline function set_Value(value:UInt):UInt {
        var __value:UInt = cast value;
        return untyped __cs__("{0}.Value = {1}", this, __value);
    }

    /** This is used by codegen. String literals are replaced by this function call, which avoids having to create or lookup the string token. */
    static function Literal(value:String, token:UInt):sandbox.StringToken;
}
