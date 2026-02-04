package sandbox;

@:native("Sandbox.PanelComponent")
extern class PanelComponent {
    /** The panel. Can be null if the panel doesn't exist yet. */
    var Panel(default,never):sandbox.ui.Panel;
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
    function AddClass(className:String):Void;
    function BindClass(className:String, func:system.Func1<Bool>):Void;
    /** When this has changes, we will re-render this panel. This is usually implemented as a HashCode.Combine containing stuff that causes the panel's content to change. */
    @:protected function BuildHash():Int;
    /** Gets overridden by .razor file */
    @:protected function BuildRenderTree(v:microsoft.aspnetcore.components.rendering.RenderTreeBuilder):Void;
    /** Gets overridden by .razor file */
    @:protected function GetRenderTreeChecksum():String;
    function HasClass(className:String):Bool;
    @:protected function OnMouseDown(e:sandbox.ui.MousePanelEvent):Void;
    @:protected function OnMouseMove(e:sandbox.ui.MousePanelEvent):Void;
    @:protected function OnMouseOut(e:sandbox.ui.MousePanelEvent):Void;
    @:protected function OnMouseOver(e:sandbox.ui.MousePanelEvent):Void;
    @:protected function OnMouseUp(e:sandbox.ui.MousePanelEvent):Void;
    @:protected function OnMouseWheel(value:Vector2):Void;
    @:protected function OnParentChanged(oldParent:sandbox.GameObject, newParent:sandbox.GameObject):Void;
    @:protected function OnStart():Void;
    /** Called after the tree has been built. This can happen any time the contents change. */
    @:protected function OnTreeBuilt():Void;
    /** Called when the razor ui has been built. */
    @:protected function OnTreeFirstBuilt():Void;
    function RemoveClass(className:String):Void;
    function SetClass(className:String, enabled:Bool):Void;
    /** Should be called when you want the component to be re-rendered. */
    function StateHasChanged():Void;
}
