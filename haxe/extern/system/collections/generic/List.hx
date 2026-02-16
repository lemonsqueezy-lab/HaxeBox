package system.collections.generic;

@:native("System.Collections.Generic.List`1")
extern class List<T1> {
	function new():Void;

	overload public static inline function wrap<T>(value:Iterable<T>):List<T> {
		return wrap(value.iterator());
	}

	overload public static inline function wrap<T>(value:Iterator<T>):List<T> {
		var list = new List<T>();
		for (item in value)
			list.Add(item);
		return list;
	}

	function Add(item:T1):Void;
}
