package system;

@:native("System.HashCode")
extern class HashCode {
	public function new():Void;

	/** Diffuses the hash code returned by the specified value. */
	overload public static function Combine<T1>(value1:T1):Int;

	/** Combines two values into a hash code. */
	overload public static function Combine<T1, T2>(value1:T1, value2:T2):Int;

	/** Combines three values into a hash code. */
	overload public static function Combine<T1, T2, T3>(value1:T1, value2:T2, value3:T3):Int;

	/** Combines four values into a hash code. */
	overload public static function Combine<T1, T2, T3, T4>(value1:T1, value2:T2, value3:T3, value4:T4):Int;

	/** Combines five values into a hash code. */
	overload public static function Combine<T1, T2, T3, T4, T5>(value1:T1, value2:T2, value3:T3, value4:T4, value5:T5):Int;

	/** Combines six values into a hash code. */
	overload public static function Combine<T1, T2, T3, T4, T5, T6>(value1:T1, value2:T2, value3:T3, value4:T4, value5:T5, value6:T6):Int;

	/** Combines seven values into a hash code. */
	overload public static function Combine<T1, T2, T3, T4, T5, T6, T7>(value1:T1, value2:T2, value3:T3, value4:T4, value5:T5, value6:T6, value7:T7):Int;

	/** Combines eight values into a hash code. */
	overload public static function Combine<T1, T2, T3, T4, T5, T6, T7, T8>(value1:T1, value2:T2, value3:T3, value4:T4, value5:T5, value6:T6, value7:T7,
		value8:T8):Int;

	/** Adds a single value to the hash code. */
	overload public function Add<T>(value:T):Void;

	/** Adds a single value to the hash code, specifying the type that provides the hash code function. */
	overload public function Add<T>(value:T, ?comparer:system.collections.generic.IEqualityComparer<T>):Void;

	/** Adds a span of bytes to the hash code. */
	public function AddBytes(value:system.ReadOnlySpan<system.Byte>):Void;

	/** Calculates the final hash code after consecutive `Add` invocations. */
	public function ToHashCode():Int;
}
