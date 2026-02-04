package sandbox;

/** Renders text in the world */
@:native("Sandbox.TextRenderer")
final extern class TextRenderer {
    function new():Void;
    /** The text scope defines what text to render and it's visual properties (such as font, color, outline, etc.) */
    var TextScope(default,default):sandbox.textrendering.Scope;
    /** The size of the text in the world. This is different from the font size, which is defined in the TextScope and determines resolution of the rendered text. */
    var Scale(default,default):Single;
    /** The horizontal alignment of the text in the world. */
    var HorizontalAlignment(default,default):sandbox.textrenderer.HAlignment;
    /** The vertical alignment of the text in the world. */
    var VerticalAlignment(default,default):sandbox.textrenderer.VAlignment;
    /** The blend mode of the text. This determines how the text is rendered over the world. */
    var BlendMode(default,default):sandbox.BlendMode;
    /** The strength of the fog effect applied to the text. This determines how much the text blends with any fog in the scene. */
    var FogStrength(default,default):Single;
    /** The color of the text from the TextScope. */
    var Color(default,default):Color;
    /** The font size of the text from the TextScope. This is different from the Scale, which determines how large the text appears in the world. */
    var FontSize(default,default):Single;
    var FontWeight(default,default):Int;
    var FontFamily(default,default):String;
    var Text(default,default):String;
    var ComponentVersion(default,never):Int;
    var RenderOptions(default,never):sandbox.RenderOptions;
    /** Attributes that are applied to the renderer based on the current material and shader. If the renderer is disabled, the changes are deferred until it is enabled again. Attributes are not saved to disk, and are not cloned when copying the renderer. */
    var Attributes(default,never):sandbox.RenderAttributes;
    /** A command list which is executed immediately before rendering this */
    var ExecuteBefore(default,default):sandbox.rendering.CommandList;
    /** A command list which is executed immediately after rendering this */
    var ExecuteAfter(default,default):sandbox.rendering.CommandList;
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
    /** The world transform of the game object. */
    var WorldTransform(default,default):Transform;
    /** The world position of the game object. */
    var WorldPosition(default,default):Vector3;
    /** The world rotation of the game object. */
    var WorldRotation(default,default):Rotation;
    /** The world scale of the game object. */
    var WorldScale(default,default):Vector3;
    @:protected function OnDirty():Void;
    @:protected function OnDisabled():Void;
    @:protected function OnEnabled():Void;
    @:protected function OnRenderOptionsChanged():Void;
    /** Tags have been updated - lets update our scene object tags */
    @:protected function OnTagsChanged():Void;
}
