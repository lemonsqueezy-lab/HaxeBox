package sandbox.stringtoken;

/** To allow redirecting in the case where a class has both a string and StringToken version of a method. We should be able to remove this when we're compiling on demand instead of keeping the string versions around for compatibility. */
@:native("Sandbox.StringToken.ConvertAttribute")
extern class ConvertAttribute {
    function new():Void;
    var TypeId(default,never):cs.system.Object;
}
