package;

extern class Log {
	public static inline function Info(message:String)
		untyped __cs__("Log.Info({0})", message);
	public static inline function Warning(message:String)
		untyped __cs__("Log.Warning({0})", message);
	public static inline function Error(message:String)
		untyped __cs__("Log.Error({0})", message);
	public static inline function Header(message:String)
		untyped __cs__("Log.Header({0})", message);
}
