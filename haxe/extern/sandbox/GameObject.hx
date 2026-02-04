package sandbox;

/** An object in the scene. Functionality is added using Components. A GameObject has a transform, which explains its position, rotation and scale, relative to its parent. It also has a name, and can be enabled or disabled. When disabled, the GameObject is still in the scene, but the components don't tick and are all disabled. */
@:native("Sandbox.GameObject")
extern class GameObject {
    overload function new():Void;
    overload function new(enabled:Bool):Void;
    /** Create a new GameObject with the given enabled state and name. */
    overload function new(enabled:Bool, name:String):Void;
    /** Create a new GameObject with the given name. Will be created enabled. */
    overload function new(name:String):Void;
    /** Create a new GameObject with the given parent, enabled state and name. */
    overload function new(parent:sandbox.GameObject, enabled:Bool, name:String):Void;
    /** The scene that this GameObject is in. */
    var Scene(default,never):sandbox.Scene;
    /** Our position relative to our parent, or the scene if we don't have any parent. */
    var Transform(default,never):sandbox.GameTransform;
    /** The GameObject's name is usually used for debugging, and for finding it in the scene. */
    var Name(default,default):String;
    /** Returns true of this is a root object. Root objects are parented to the scene. */
    var IsRoot(default,never):Bool;
    /** Return the root GameObject. The root is the object that is parented to the scene - which could very much be this object. */
    var Root(default,never):sandbox.GameObject;
    /** This token is cancelled when the GameObject ceases to exist, or is disabled */
    var EnabledToken(default,never):system.threading.CancellationToken;
    /** Access components on this GameObject */
    var Components(default,never):sandbox.ComponentList;
    /** Is this gameobject enabled? */
    var Enabled(default,default):Bool;
    var Parent(default,default):sandbox.GameObject;
    var Children(default,never):system.collections.generic.List<sandbox.GameObject>;
    /** Is this gameobject active. For it to be active, it needs to be enabled, all of its ancestors need to be enabled, and it needs to be in a scene. */
    var Active(default,never):Bool;
    /** Allows drawing of temporary debug shapes and text in the scene */
    var DebugOverlay(default,never):sandbox.DebugOverlaySystem;
    /** True if the GameObject is not destroyed */
    var IsValid(default,never):Bool;
    /** Return true if this object is destroyed. This will also return true if the object is marked to be destroyed soon. */
    var IsDestroyed(default,never):Bool;
    var Flags(default,default):sandbox.GameObjectFlags;
    /** True if this GameObject is being deserialized right now */
    var IsDeserializing(default,never):Bool;
    var HasGimzoHandle(default,never):Bool;
    var HasGizmoHandle(default,never):Bool;
    var Id(default,never):system.Guid;
    /** The local transform of the game object. */
    var LocalTransform(default,default):Transform;
    /** The local position of the game object. */
    var LocalPosition(default,default):Vector3;
    /** The local rotation of the game object. */
    var LocalRotation(default,default):Rotation;
    /** The local scale of the game object. */
    var LocalScale(default,default):Vector3;
    /** True if this is a networked object and is owned by another client. This means that we're not controlling this object, so shouldn't try to move it or anything. */
    var IsProxy(default,never):Bool;
    /** If true then this object is the root of a networked object. */
    var IsNetworkRoot(default,never):Bool;
    /** OBSOLETE: Use NetworkMode instead. */
    var Networked(default,default):Bool;
    /** How should this object be networked to other clients? By default, a will be networked as part of the snapshot. */
    var NetworkMode(default,default):sandbox.NetworkMode;
    /** Whether our networked transform will be interpolated. This property will only be synchronized for a root network object. Obsolete: 09/12/2025 */
    var NetworkInterpolation(default,default):Bool;
    /** Access network information for this GameObject. */
    var Network(default,never):sandbox.gameobject.NetworkAccessor;
    var RootNetwork(default,never):sandbox.gameobject.NetworkAccessor;
    var PrefabInstanceSource(default,never):String;
    /** This GameObject is part of a prefab instance. */
    var IsPrefabInstance(default,never):Bool;
    /** This GameObject is the root of a prefab instance. Returns true for regular instance roots and nested prefab instance roots. */
    var IsPrefabInstanceRoot(default,never):Bool;
    var Tags(default,default):sandbox.GameTags;
    /** The world transform of the game object. */
    var WorldTransform(default,default):Transform;
    /** The world position of the game object. */
    var WorldPosition(default,default):Vector3;
    /** The world rotation of the game object. */
    var WorldRotation(default,default):Rotation;
    /** The world scale of the game object. */
    var WorldScale(default,default):Vector3;
    /** Add a component to this GameObject */
    function AddComponent<T>(startEnabled:Bool):T;
    function AddSibling(go:sandbox.GameObject, before:Bool, keepWorldPosition:Bool):Void;
    /** We are cloned from a prefab. Stop that. */
    function BreakFromPrefab():Void;
    /** Destroy all components and child objects */
    function Clear():Void;
    /** Create a unique copy of the GameObject */
    overload function Clone():sandbox.GameObject;
    overload function Clone(position:Vector3):sandbox.GameObject;
    overload function Clone(cloneConfig:sandbox.CloneConfig):sandbox.GameObject;
    overload function Clone(position:Vector3, rotation:Rotation):sandbox.GameObject;
    static overload function Clone(prefabPath:String, config:Null<sandbox.CloneConfig>):sandbox.GameObject;
    static overload function Clone(prefabFile:sandbox.PrefabFile, config:Null<sandbox.CloneConfig>):sandbox.GameObject;
    overload function Clone(position:Vector3, rotation:Rotation, scale:Vector3):sandbox.GameObject;
    overload function Clone(transform:Transform, parent:sandbox.GameObject, startEnabled:Bool, name:String):sandbox.GameObject;
    overload function Clone(parent:sandbox.GameObject, position:Vector3, rotation:Rotation, scale:Vector3):sandbox.GameObject;
    static overload function Clone(prefabPath:String, transform:Transform, parent:sandbox.GameObject, startEnabled:Bool, name:String):sandbox.GameObject;
    static overload function Clone(prefabFile:sandbox.PrefabFile, transform:Transform, parent:sandbox.GameObject, startEnabled:Bool, name:String):sandbox.GameObject;
    overload function Deserialize(node:system.text.json.nodes.JsonObject):Void;
    overload function Deserialize(node:system.text.json.nodes.JsonObject, options:sandbox.gameobject.DeserializeOptions):Void;
    /** Destroy this object. Will actually be destroyed at the start of the next frame. */
    function Destroy():Void;
    /** Destroy this object immediately. Calling this might cause some problems if functions are expecting the object to still exist, so it's not always a good idea. */
    function DestroyImmediate():Void;
    function EditLog(name:String, source:cs.system.Object):Void;
    function GetAllObjects(enabled:Bool):system.collections.generic.IEnumerable<sandbox.GameObject>;
    /** This is slow, and somewhat innacurate. Don't call it every frame! */
    function GetBounds():BBox;
    /** Get a component on this GameObject */
    function GetComponent<T>(includeDisabled:Bool):T;
    /** Get component on this GameObject or on descendant GameObjects */
    function GetComponentInChildren<T>(includeDisabled:Bool, includeSelf:Bool):T;
    /** Get component on this GameObject and on ancestor GameObjects */
    function GetComponentInParent<T>(includeDisabled:Bool, includeSelf:Bool):T;
    /** Get components on this GameObject */
    function GetComponents<T>(includeDisabled:Bool):system.collections.generic.IEnumerable<T>;
    /** Get components on this GameObject and on descendant GameObjects */
    function GetComponentsInChildren<T>(includeDisabled:Bool, includeSelf:Bool):system.collections.generic.IEnumerable<T>;
    /** Get components on this GameObject and on ancestor GameObjects */
    function GetComponentsInParent<T>(includeDisabled:Bool, includeSelf:Bool):system.collections.generic.IEnumerable<T>;
    /** This is slow, and somewhat innacurate. Don't call it every frame! */
    function GetLocalBounds():BBox;
    /** Get the GameObject after us, */
    function GetNextSibling(enabledOnly:Bool):sandbox.GameObject;
    /** Add a component to this GameObject */
    function GetOrAddComponent<T>(startEnabled:Bool):T;
    /** Get the GameObject of a prefab from file path */
    static function GetPrefab(prefabFilePath:String):sandbox.GameObject;
    /** Returns true if the passed in object is an ancestor */
    function IsAncestor(ancestor:sandbox.GameObject):Bool;
    /** Returns true if the passed in object is a decendant of ours */
    function IsDescendant(decendant:sandbox.GameObject):Bool;
    static function JsonRead(reader:system.text.json.Utf8JsonReader, targetType:cs.system.Type):cs.system.Object;
    static function JsonWrite(value:cs.system.Object, writer:system.text.json.Utf8JsonWriter):Void;
    function MakeNameUnique():Void;
    /** Spawn on the network. If you have permission to spawn entities, this will spawn on everyone else's clients, and you will be the owner. */
    overload function NetworkSpawn():Bool;
    overload function NetworkSpawn(owner:sandbox.Connection):Bool;
    overload function NetworkSpawn(options:sandbox.NetworkSpawnOptions):Bool;
    overload function NetworkSpawn(enabled:Bool, owner:sandbox.Connection):Bool;
    /** Play this sound on this GameObject. The sound will follow the position of the GameObject. You'll be able to use GameObject.StopAllSounds to stop all sounds that are following this GameObject. */
    function PlaySound(sound:sandbox.SoundEvent, positionOffset:Vector3):sandbox.SoundHandle;
    function RunEvent<T>(action:system.Action1<T>, find:sandbox.FindMode):Void;
    /** Returns either a full JsonObject with all the GameObjects data, or if this GameObject is a prefab instance, it will return an object containing the patch/diff between instance and prefab. */
    function Serialize(options:sandbox.gameobject.SerializeOptions):system.text.json.nodes.JsonObject;
    function SetParent(value:sandbox.GameObject, keepWorldPosition:Bool):Void;
    function SetPrefabSource(prefabSource:String):Void;
    /** Stop any sounds playing on this GameObject */
    function StopAllSounds(fadeOutTime:Single):Void;
    function ToString():String;
    function UpdateFromPrefab():Void;
    @:protected overload function __rpc_Wrapper(m:sandbox.WrappedMethod<Dynamic>, argumentList:Array<cs.system.Object>):Void;
    @:protected overload function __rpc_Wrapper<T>(m:sandbox.WrappedMethod<Dynamic>, argument:Array<T>):Void;
    @:protected function __sync_GetValue<T>(p:sandbox.WrappedPropertyGet<T>):T;
    @:protected function __sync_SetValue<T>(p:sandbox.WrappedPropertySet<T>):Void;
}
