package sandbox.diagnostics;

@:native("Sandbox.Diagnostics.Assert")
final extern class Assert {
    static function AreEqual<T>(a:T, b:T, message:String):Void;
    static function AreNotEqual<T>(a:T, b:T, message:String):Void;
    /** Throws an exception when given expression does not resolve to false. */
    static function False(isValid:Bool, message:String):Void;
    static overload function IsNull<T>(obj:T):Void;
    static overload function IsNull<T>(obj:T, message:String):Void;
    /** Throws an exception when the given object is not valid. */
    static function IsValid(obj:sandbox.IValid):Void;
    static overload function NotNull<T>(obj:T):Void;
    static overload function NotNull<T>(obj:T, message:String):Void;
    /** Throws an exception when given expression does not resolve to true. */
    static function True(isValid:Bool, message:String):Void;
}
