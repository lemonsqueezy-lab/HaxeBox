package sandbox;

@:native("Sandbox.LauncherEnvironment")
final extern class LauncherEnvironment {
    static var GamePath(default,default):String;
    static var ManagedDllPath(default,default):String;
    static var PlatformName(default,never):String;
    static function Init():Void;
}
