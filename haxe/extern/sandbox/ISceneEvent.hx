package sandbox;

@:native("Sandbox.ISceneEvent`1")
extern class ISceneEvent<T> {
    static function Post<T>(action:system.Action1<T>):Void;
    static function PostToGameObject<T>(go:sandbox.GameObject, action:system.Action1<T>, find:sandbox.FindMode):Void;
}
