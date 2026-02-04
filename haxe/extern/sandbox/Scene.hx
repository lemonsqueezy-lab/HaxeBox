package sandbox;

@:native("Sandbox.Scene")
extern class Scene {
    function new():Void;
    var Camera(default,never):sandbox.CameraComponent;
    var IsEditor(default,never):Bool;
    var SceneWorld(default,never):sandbox.SceneWorld;
    var DebugSceneWorld(default,never):sandbox.SceneWorld;
    var HasUnsavedChanges(default,never):Bool;
    var Source(default,never):sandbox.GameResource;
    var Directory(default,never):sandbox.GameObjectDirectory;
    var Title(default,default):String;
    var Description(default,default):String;
    /** If true we'll additive load the system scene when this scene is loaded. Defaults to true. You might want to disable this for specific scenes, like menu scenes etc. */
    var WantsSystemScene(default,default):Bool;
    /** Global render attributes accessible on any renderable in this Scene. */
    var RenderAttributes(default,never):sandbox.RenderAttributes;
    var PhysicsWorld(default,never):sandbox.PhysicsWorld;
    /** Returns true if this scene has not been destroyed */
    var IsValid(default,never):Bool;
    /** Allows quickly finding components that have a volume */
    var Volumes(default,never):sandbox.volumes.VolumeSystem;
    /** Allows access to the scene's editor session from the game. This will be null if there is no editor session active on this scene. */
    var Editor(default,never):sandbox.scene.ISceneEditorSession;
    /** Return true if we're in an initial loading phase */
    var IsLoading(default,never):Bool;
    var NavMesh(default,never):sandbox.navigation.NavMesh;
    var NetworkFrequency(default,default):Single;
    /** One divided by ProjectSettings.Networking.UpdateRate. */
    var NetworkRate(default,never):Single;
    /** All active non-editor scenes. */
    static var All(default,never):system.collections.generic.IEnumerable<sandbox.Scene>;
    var IsFixedUpdate(default,never):Bool;
    var FixedDelta(default,never):Single;
    var FixedUpdateFrequency(default,default):Single;
    var MaxFixedUpdates(default,default):Int;
    var PhysicsSubSteps(default,default):Int;
    var ThreadedAnimation(default,default):Bool;
    var UseFixedUpdate(default,default):Bool;
    var TimeScale(default,default):Single;
    var Trace(default,never):sandbox.SceneTrace;
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
    /** Call this method on this stage. This returns a disposable that will remove the hook when disposed. */
    function AddHook(stage:sandbox.gameobjectsystem.Stage, order:Int, action:system.Action, className:String, description:String):system.IDisposable;
    function ClearUnsavedChanges():Void;
    static function CreateEditorScene():sandbox.Scene;
    /** Create a GameObject on this scene. This doesn't require the scene to be the active scene. */
    function CreateObject(enabled:Bool):sandbox.GameObject;
    function Deserialize(node:system.text.json.nodes.JsonObject, option:sandbox.gameobject.DeserializeOptions):Void;
    /** Destroy this scene. After this you should never use it again. */
    function Destroy():Void;
    function EditorDraw():Void;
    function EditorTick(timeNow:Single, timeDelta:Single):Void;
    @:protected function Finalize():Void;
    /** Find objects with tag */
    function FindAllWithTag(tag:String):system.collections.generic.IEnumerable<sandbox.GameObject>;
    /** Find objects with all tags */
    function FindAllWithTags(tags:system.collections.generic.IEnumerable<String>):system.collections.generic.IEnumerable<sandbox.GameObject>;
    /** Find game objects in a box using physics. */
    overload function FindInPhysics(box:BBox):system.collections.generic.IEnumerable<sandbox.GameObject>;
    overload function FindInPhysics(frustum:sandbox.Frustum):system.collections.generic.IEnumerable<sandbox.GameObject>;
    overload function FindInPhysics(sphere:sandbox.Sphere):system.collections.generic.IEnumerable<sandbox.GameObject>;
    function GameTick(timeDelta:Float):Void;
    /** Gets the first object found of this type. This could be a component or a GameObjectSystem, or other stuff in the future. */
    function Get<T>():T;
    /** Get all objects of this type. This could be a component or a GameObjectSystem, or other stuff in the future. */
    overload function GetAll<T>():system.collections.generic.IEnumerable<T>;
    overload function GetAll<T>(target:system.collections.generic.List<T>):Void;
    /** Get all components of type. This can include interfaces. This function can only find enabled/active components. */
    overload function GetAllComponents<T>():system.collections.generic.IEnumerable<T>;
    overload function GetAllComponents(type:cs.system.Type):system.collections.generic.IEnumerable<sandbox.Component>;
    /** Get a specific system by type. */
    overload function GetSystem<T>():T;
    overload function GetSystem<T>(val:T):Void;
    /** Are these bounds visible to the specified ? */
    function IsBBoxVisibleToConnection(target:sandbox.Connection, box:BBox):Bool;
    /** Is a position visible to the specified ? */
    function IsPointVisibleToConnection(target:sandbox.Connection, position:Vector3):Bool;
    /** Load from the provided . This will not load the scene for other clients in a multiplayer session, you should instead use if you want to bring other clients. */
    overload function Load(resource:sandbox.GameResource):Bool;
    overload function Load(options:sandbox.SceneLoadOptions):Bool;
    /** Load from the provided file name. This will not load the scene for other clients in a multiplayer session, you should instead use if you want to bring other clients. */
    function LoadFromFile(filename:String):Bool;
    /** Delete any GameObjects waiting to be deleted */
    function ProcessDeletes():Void;
    /** Push this scene as the active scene, for a scope */
    function Push():system.IDisposable;
    function RunEvent<T>(action:system.Action1<T>, find:sandbox.FindMode):Void;
    function Serialize(options:sandbox.gameobject.SerializeOptions):system.text.json.nodes.JsonObject;
    function StartLoading():Void;
}
