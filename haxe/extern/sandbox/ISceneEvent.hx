package sandbox;

@:native("Sandbox.ISceneEvent`1")
extern class ISceneEvent<T> {
    static function Post(action:system.Action1<T>):Void;
    static function PostToGameObject(go:sandbox.GameObject, action:system.Action1<T>, find:sandbox.FindMode):Void;
}
