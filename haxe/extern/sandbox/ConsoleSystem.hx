package sandbox;

/** A library to interact with the Console System. */
@:native("Sandbox.ConsoleSystem")
final extern class ConsoleSystem {
    /** Get a console variable's value as a string. */
    static function GetValue(name:String, defaultValue:String):String;
    static function OnChangePropertySet<T>(p:sandbox.WrappedPropertySet<T>):Void;
    static function OnWrappedGet<T>(p:sandbox.WrappedPropertyGet<T>):T;
    static function OnWrappedSet<T>(p:sandbox.WrappedPropertySet<T>):Void;
    /** Run this command. This should be a single command. */
    static overload function Run(command:String):Void;
    static overload function Run(command:String, arguments:Array<cs.system.Object>):Void;
    /** Try to set a console variable. You will only be able to set variables that you have permission to set. */
    static function SetValue(name:String, value:cs.system.Object):Void;
}
