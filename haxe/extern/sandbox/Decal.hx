package sandbox;

/** The Decal component projects textures onto model's opaque or transparent surfaces. They inherit and modify the PBR properties of the surface they're projected on. */
@:native("Sandbox.Decal")
final extern class Decal extends sandbox.Component {
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
    @:protected function DrawGizmos():Void;
    @:protected function OnDisabled():Void;
    @:protected function OnEnabled():Void;
    @:protected function OnPreRender():Void;
    /** Tags have been updated - lets update our scene object tags */
    @:protected function OnTagsChanged():Void;
    static function Upgrader_v2(json:system.text.json.nodes.JsonObject):Void;
    static function Upgrader_v3(json:system.text.json.nodes.JsonObject):Void;
}
