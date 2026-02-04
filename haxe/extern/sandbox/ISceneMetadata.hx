package sandbox;

/** Allows components to add metadata to the scene/prefab file, which is accessible before loading it. */
@:native("Sandbox.ISceneMetadata")
extern class ISceneMetadata {
    function GetMetadata():system.collections.generic.Dictionary<String,String>;
}
