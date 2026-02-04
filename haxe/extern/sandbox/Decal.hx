package sandbox;

/** The Decal component projects textures onto model's opaque or transparent surfaces. They inherit and modify the PBR properties of the surface they're projected on. */
@:native("Sandbox.Decal")
final extern class Decal {
    function new():Void;
    var Decals(default,default):system.collections.generic.List<sandbox.DecalDefinition>;
    var ColorTexture(default,default):sandbox.Texture;
    var NormalTexture(default,default):sandbox.Texture;
    var RMOTexture(default,default):sandbox.Texture;
    /** How long should this decal live for? */
    var LifeTime(default,default):sandbox.ParticleFloat;
    /** If true then the decal will repeat itself forever */
    var Looped(default,default):Bool;
    /** If true then this decal will automatically get removed when maxdecals are exceeded. This is good for things like bullect impacts, where you want to keep them around for as long as possible but also don't want to have an unlimited amount of them hanging around. Note that while the component will be destroyed, you probably want a TemporaryEffect component on the GameObject to make sure it all gets fully deleted. */
    var Transient(default,default):Bool;
    /** A 2D size of the decal in world units. */
    var Size(default,default):Vector2;
    /** Scale the width and height by this value */
    var Scale(default,default):sandbox.ParticleFloat;
    /** Scale the width and height by this value */
    var Rotation(default,default):sandbox.ParticleFloat;
    /** The depth of the decal in world units. This is how far the decal extends into the surface it is projected onto. */
    var Depth(default,default):Single;
    /** How long should this decal live for? */
    var Parallax(default,default):sandbox.ParticleFloat;
    /** Tints the color of the decal's albedo and can be used to adjust the overall opacity of the decal. */
    var ColorTint(default,default):sandbox.ParticleGradient;
    /** Controls the opacity of the decal's color texture without reducing the impact of the normal or rmo texture. Set to 0 to create a normal/rmo only decal masked by the color textures alpha. */
    var ColorMix(default,default):sandbox.ParticleFloat;
    /** Attenuation angle controls how much the decal fades at an angle. At 0 it does not fade at all. Up to 1 it fades the most. */
    var AttenuationAngle(default,default):Single;
    /** Determines the order the decal gets rendered in, the higher the layer the more priority it has. Decals on the same layer get automatically sorted by their GameObject ID. */
    var SortLayer(default,default):UInt;
    var SheetSequence(default,default):Bool;
    /** Which sequence to use */
    var SequenceId(default,default):UInt;
    /** Get the world bounds of this decal */
    var WorldBounds(default,never):BBox;
    var ComponentVersion(default,never):Int;
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
    @:protected function DrawGizmos():Void;
    @:protected function OnDisabled():Void;
    @:protected function OnEnabled():Void;
    @:protected function OnPreRender():Void;
    /** Tags have been updated - lets update our scene object tags */
    @:protected function OnTagsChanged():Void;
    static function Upgrader_v2(json:system.text.json.nodes.JsonObject):Void;
    static function Upgrader_v3(json:system.text.json.nodes.JsonObject):Void;
}
