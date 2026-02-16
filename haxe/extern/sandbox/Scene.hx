package sandbox;

@:native("Sandbox.Scene")
extern class Scene extends sandbox.GameObject {
    overload function new():Void;
    @:protected overload function new(isEditor:Bool):Void;
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
