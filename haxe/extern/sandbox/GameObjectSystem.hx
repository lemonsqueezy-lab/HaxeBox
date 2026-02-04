package sandbox;

@:native("Sandbox.GameObjectSystem`1")
extern class GameObjectSystem<T> {
    static var Current(default,never):T;
    var Scene(default,never):sandbox.Scene;
    var Id(default,never):system.Guid;
    static function Get(scene:sandbox.Scene):T;
}
