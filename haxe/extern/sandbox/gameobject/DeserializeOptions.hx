package sandbox.gameobject;

@:native("Sandbox.GameObject.DeserializeOptions")
final extern class DeserializeOptions {
    /** Allows overriding the transform when deserializing. Will apply only to the root object. */
    var TransformOverride(default,set):Null<Transform>;

    private inline function set_TransformOverride(value:Null<Transform>):Null<Transform> {
        var __value:Null<Transform> = cast value;
        return untyped __cs__("{0}.TransformOverride = {1}", this, __value);
    }

}
