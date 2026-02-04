package sandbox;

/** New GameObjects and Components are registered with this class when they're created, and unregistered when they're removed. This gives us a single place to enforce Id uniqueness in the scene, and allows for fast lookups by Id. */
@:native("Sandbox.GameObjectDirectory")
final extern class GameObjectDirectory {
    var Count(default,never):Int;
    var GameObjectCount(default,never):Int;
    var ComponentCount(default,never):Int;
    /** Find a GameObject in the scene by Guid. This should be really really fast. */
    function FindByGuid(guid:system.Guid):sandbox.GameObject;
    /** Find objects with this name. Not performant. */
    function FindByName(name:String, caseinsensitive:Bool):system.collections.generic.IEnumerable<sandbox.GameObject>;
    /** Find a Component in the scene by Guid. This should be really really fast. */
    function FindComponentByGuid(guid:system.Guid):sandbox.Component;
}
