package sandbox.diagnostics;

@:native("Sandbox.Diagnostics.Logger")
extern class Logger {
    function new(name:String):Void;
    /** Name of this logger. */
    @:protected
    var Name(default,null):String;
    /** Log an error. This is the most severe log level. */
    overload function Error(message:String):Void;
    overload function Error(message:cs.system.Object):Void;
    overload function Error(exception:system.Exception):Void;
    overload function Error(exception:system.Exception, message:String):Void;
    overload function Error(exception:system.Exception, message:cs.system.Object):Void;
    /** Log some information. This is the default log severity level. */
    overload function Info(message:String):Void;
    overload function Info(message:cs.system.Object):Void;
    /** Log some information. This is least severe log level. */
    overload function Trace(message:String):Void;
    overload function Trace(message:cs.system.Object):Void;
    /** Log a warning. This is the second most severe log level. */
    overload function Warning(message:String):Void;
    overload function Warning(message:cs.system.Object):Void;
    overload function Warning(exception:system.Exception, message:String):Void;
    overload function Warning(exception:system.Exception, message:cs.system.Object):Void;
}
