package sandbox;

/** A physics surface. This is applied to each PhysicsShape and controls its physical properties and physics related sounds. */
@:native("Sandbox.Surface")
extern class Surface {
    function new():Void;
    var NameHash(default,never):UInt;
    var Index(default,never):Int;
    /** Filepath of the base surface. Use SetBaseSurface and GetBaseSurface. */
    var BaseSurface(default,default):String;
    /** Defines the audio properties of this surface for Steam Audio */
    var AudioSurface(default,default):sandbox.AudioSurface;
    /** A concise description explaining what this surface property should be used for. */
    var Description(default,default):String;
    /** Friction of this surface material. */
    var Friction(default,default):Single;
    /** Controls bounciness. */
    var Elasticity(default,default):Single;
    /** Density of this surface material. This affects things like automatic mass calculation. Density is in kg/m^3. */
    var Density(default,default):Single;
    /** Controls how easily rolling shapes (sphere, capsule) roll on surfaces. */
    var RollingResistance(default,default):Single;
    /** Velocity threshold, below which objects will not bounce due to their elasticity. */
    var BounceThreshold(default,default):Single;
    var Dampening(default,default):Single;
    /** Impact effects of this surface material. */
    var ImpactEffects(default,default):sandbox.surface.ImpactEffectData;
    /** Scrape effects of this surface material. */
    var ScrapeEffects(default,default):sandbox.surface.ScrapeEffectData;
    /** Sounds associated with this surface material. */
    var Sounds(default,default):sandbox.surface.OldSoundData;
    /** Common prefabs for this surface material */
    var PrefabCollection(default,default):sandbox.surface.SurfacePrefabCollection;
    /** Sounds for this surface material */
    var SoundCollection(default,default):sandbox.surface.SurfaceSoundCollection;
    /** A list of tags as one string. */
    var Tags(default,default):String;
    /** True if this resource has changed but the changes aren't written to disk */
    var HasUnsavedChanges(default,never):Bool;
    /** Target type used for any action graphs contained in this resource. Defaults to this resource's type. */
    @:protected
    var ActionGraphTargetType(null,never):cs.system.Type;
    /** Target instance used for any action graphs contained in this resource. Defaults to this resource itself. */
    @:protected
    var ActionGraphTarget(null,never):cs.system.Object;
    /** The version of the component. Used by . */
    var ResourceVersion(default,never):Int;
    var IsValid(default,never):Bool;
    /** ID of this resource, */
    @:protected
    var ResourceId(default,null):Int;
    /** Path to this resource. */
    @:protected
    var ResourcePath(default,null):String;
    /** File name of the resource without the extension. */
    @:protected
    var ResourceName(default,null):String;
    /** Embedded data for this resource */
    var EmbeddedResource(default,default):Null<sandbox.resources.EmbeddedResource>;
    @:protected function CreateAssetTypeIcon(width:Int, height:Int):sandbox.Bitmap;
    /** Returns a Surface from its name, or null */
    static function FindByName(name:String):sandbox.Surface;
    /** Returns the base surface of this surface, or null if we are the default surface. */
    function GetBaseSurface():sandbox.Surface;
    /** Do we have all the tags on this hitbox? */
    function HasAllTags(tags:Array<String>):Bool;
    /** Do we have all the tags on this hitbox? */
    function HasAnyTags(tags:Array<String>):Bool;
    /** Do we have a tag? */
    function HasTag(tag:String):Bool;
    /** Play a collision sound based on this shape's surface. Can return null if sound is invalid, or too quiet to play. */
    function PlayCollisionSound(position:Vector3, speed:Single):sandbox.SoundHandle;
    @:protected function PostLoad():Void;
    @:protected function PostReload():Void;
    /** Sets the base surface by name. */
    function SetBaseSurface(name:String):Void;
}
