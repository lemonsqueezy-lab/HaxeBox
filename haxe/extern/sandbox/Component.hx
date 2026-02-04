package sandbox;

/** A GameObject can have many components, which are the building blocks of the game. */
@:native("Sandbox.Component")
extern class Component {
    /** The scene this Component is in. This is a shortcut for `GameObject.Scene`. */
    var Scene(default,never):sandbox.Scene;
    /** The transform of the GameObject this component belongs to. Components don't have their own transforms but they can access the transform of the GameObject they belong to. This is a shortcut for `GameObject.Transform`. */
    var Transform(default,never):sandbox.GameTransform;
    /** The GameObject this component belongs to. */
    var GameObject(default,never):sandbox.GameObject;
    /** Allow creating tasks that are automatically cancelled when the GameObject is destroyed. */
    @:protected
    var Task(null,never):sandbox.TaskSource;
    /** Access components on this component's GameObject */
    var Components(default,never):sandbox.ComponentList;
    /** The enable state of this . This doesn't tell you whether the component is actually active because its parent might be disabled. This merely tells you what the component wants to be. You should use to determine whether the object is truly active in the scene. */
    var Enabled(default,default):Bool;
    /** True if this Component is enabled, and all of its ancestor GameObjects are enabled */
    var Active(default,never):Bool;
    var IsValid(default,never):Bool;
    var OnComponentEnabled(default,default):system.Action;
    var OnComponentStart(default,default):system.Action;
    var OnComponentUpdate(default,default):system.Action;
    var OnComponentFixedUpdate(default,default):system.Action;
    var OnComponentDisabled(default,default):system.Action;
    var OnComponentDestroy(default,default):system.Action;
    var Tags(default,never):sandbox.ITagSet;
    /** Allows drawing of temporary debug shapes and text in the scene */
    var DebugOverlay(default,never):sandbox.DebugOverlaySystem;
    var Flags(default,default):sandbox.ComponentFlags;
    var Id(default,never):system.Guid;
    /** The local transform of the game object. */
    var LocalTransform(default,default):Transform;
    /** The local position of the game object. */
    var LocalPosition(default,default):Vector3;
    /** The local rotation of the game object. */
    var LocalRotation(default,default):Rotation;
    /** The local scale of the game object. */
    var LocalScale(default,default):Vector3;
    var Network(default,never):sandbox.gameobject.NetworkAccessor;
    /** True if this is a networked object and is owned by another client. This means that we're not controlling this object, so shouldn't try to move it or anything. */
    var IsProxy(default,never):Bool;
    /** The version of the component. Used by . */
    var ComponentVersion(default,never):Int;
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
    function Deserialize(node:system.text.json.nodes.JsonObject):Void;
    /** Deserialize this component as per but update and property references immediately instead of having them deferred. */
    function DeserializeImmediately(node:system.text.json.nodes.JsonObject):Void;
    /** Destroy this component, if it isn't already destroyed. The component will be removed from its GameObject and will stop existing. You should avoid interating with the component after calling this. */
    function Destroy():Void;
    /** Destroy the parent GameObject. This really only exists so when you're typing Destroy you realise that calling Destroy only destroys the Component - not the whole GameObject. */
    function DestroyGameObject():Void;
    /** Called in the editor to draw things like bounding boxes etc */
    @:protected function DrawGizmos():Void;
    /** Called when something on the component has been edited */
    function EditLog(name:String, source:cs.system.Object):Void;
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
    /** Add a component to this GameObject */
    function GetOrAddComponent<T>(startEnabled:Bool):T;
    /** Invoke a method in x seconds. Won't be invoked if the component is no longer active. */
    function Invoke(secondsDelay:Single, action:system.Action, ct:system.threading.CancellationToken):Void;
    static function JsonRead(reader:system.text.json.Utf8JsonReader, targetType:cs.system.Type):cs.system.Object;
    static function JsonWrite(value:cs.system.Object, writer:system.text.json.Utf8JsonWriter):Void;
    /** Called once per component */
    @:protected function OnAwake():Void;
    /** Called once, when the component or gameobject is destroyed */
    @:protected function OnDestroy():Void;
    /** Called when the component has become dirty */
    @:protected function OnDirty():Void;
    @:protected function OnDisabled():Void;
    /** Called after Awake or whenever the component switches to being enabled (because a gameobject heirachy active change, or the component changed) */
    @:protected function OnEnabled():Void;
    /** When enabled, called on a fixed interval that is determined by the Scene. This is also the fixed interval in which the physics are ticked. Time.Delta is that fixed interval. */
    @:protected function OnFixedUpdate():Void;
    @:protected overload function OnLoad():system.threading.tasks.Task;
    @:protected overload function OnLoad(context:sandbox.LoadingContext):system.threading.tasks.Task;
    /** The parent has changed from one parent to another */
    @:protected function OnParentChanged(oldParent:sandbox.GameObject, newParent:sandbox.GameObject):Void;
    /** The parent object is being destroyed. This is a nice place to switch to a healthier parent. */
    function OnParentDestroy():Void;
    /** When enabled, called every frame, does not get called on a dedicated server */
    @:protected function OnPreRender():Void;
    @:protected overload function OnPropertyDirty():Void;
    @:protected overload function OnPropertyDirty<T>(p:sandbox.WrappedPropertySet<T>):Void;
    /** Called immediately after being refreshed from a network snapshot. */
    @:protected function OnRefresh():Void;
    /** Called once before the first Update - when enabled. */
    @:protected function OnStart():Void;
    /** When tags have been updated */
    @:protected function OnTagsChanged():Void;
    /** When enabled, called every frame */
    @:protected function OnUpdate():Void;
    /** Called immediately after deserializing, and when a property is changed in the editor. */
    @:protected function OnValidate():Void;
    function Reset():Void;
    function Serialize(options:sandbox.gameobject.SerializeOptions):system.text.json.nodes.JsonNode;
    @:protected overload function __rpc_Wrapper(m:sandbox.WrappedMethod<Dynamic>, argumentList:Array<cs.system.Object>):Void;
    @:protected overload function __rpc_Wrapper<T>(m:sandbox.WrappedMethod<Dynamic>, argument:Array<T>):Void;
    @:protected function __sync_GetValue<T>(p:sandbox.WrappedPropertyGet<T>):T;
    @:protected function __sync_SetValue<T>(p:sandbox.WrappedPropertySet<T>):Void;
}
