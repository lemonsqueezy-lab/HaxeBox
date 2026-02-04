package sandbox;

@:native("Sandbox.MenuScene")
final extern class MenuScene {
    static var Scene(default,default):sandbox.Scene;
    static function Startup(sceneName:String):Void;
    /** Tick the scene. This only happens when the menu is visible */
    static function Tick():Void;
}
