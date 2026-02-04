package sandbox;

/** Don't cache instances of this type when serializing action graph references, force them to be always serialized separately. We need this for component / game object references so we can update IDs when duplicating objects / instantiating prefabs. */
@:native("Sandbox.ActionGraphExposeWhenCachedAttribute")
final extern class ActionGraphExposeWhenCachedAttribute {
    function new():Void;
    var TypeId(default,never):cs.system.Object;
}
