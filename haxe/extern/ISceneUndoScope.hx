package;

@:native("ISceneUndoScope")
extern class ISceneUndoScope {
    function Push():system.IDisposable;
    overload function WithComponentChanges(component:sandbox.Component):ISceneUndoScope;
    overload function WithComponentChanges(components:system.collections.generic.IEnumerable<sandbox.Component>):ISceneUndoScope;
    function WithComponentCreations():ISceneUndoScope;
    overload function WithComponentDestructions(component:sandbox.Component):ISceneUndoScope;
    overload function WithComponentDestructions(components:system.collections.generic.IEnumerable<sandbox.Component>):ISceneUndoScope;
    overload function WithGameObjectChanges(gameObject:sandbox.GameObject, flags:GameObjectUndoFlags):ISceneUndoScope;
    overload function WithGameObjectChanges(objects:system.collections.generic.IEnumerable<sandbox.GameObject>, flags:GameObjectUndoFlags):ISceneUndoScope;
    function WithGameObjectCreations():ISceneUndoScope;
    overload function WithGameObjectDestructions(gameObject:sandbox.GameObject):ISceneUndoScope;
    overload function WithGameObjectDestructions(gameObjects:system.collections.generic.IEnumerable<sandbox.GameObject>):ISceneUndoScope;
}
