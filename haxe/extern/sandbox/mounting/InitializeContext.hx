package sandbox.mounting;

@:native("Sandbox.Mounting.InitializeContext")
final extern class InitializeContext {
    function AddError(v:String):Void;
    /** If this app is installed we'll return the folder in which it is installed */
    function GetAppDirectory(appid:haxe.Int64):String;
    /** Return true if this app is installed on Steam */
    function IsAppInstalled(appid:haxe.Int64):Bool;
    /** Return true if this DLC is installed on Steam */
    function IsDlcInstalled(appid:haxe.Int64):Bool;
}
