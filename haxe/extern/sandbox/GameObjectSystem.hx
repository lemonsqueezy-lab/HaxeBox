package sandbox;

@:native("Sandbox.GameObjectSystem`1")
extern class GameObjectSystem<T> {
    @:protected function new(scene:sandbox.Scene):Void;
    static var Current(default,never):Any;
    static function Get<T>(scene:sandbox.Scene):T;
}
