package sandbox;

/** Stores heightmaps, control maps and materials. */
@:native("Sandbox.TerrainStorage")
extern class TerrainStorage {
    function new():Void;
    var HeightMap(default,default):Array<Int>;
    var ControlMap(default,default):Array<UInt>;
    var Resolution(default,default):Int;
    /** Uniform world size of the width and length of the terrain. */
    var TerrainSize(default,default):Single;
    /** World size of the maximum height of the terrain. */
    var TerrainHeight(default,default):Single;
    var Materials(default,default):system.collections.generic.List<sandbox.TerrainMaterial>;
    var MaterialSettings(default,default):sandbox.terrainstorage.TerrainMaterialSettings;
    var ResourceVersion(default,never):Int;
    /** True if this resource has changed but the changes aren't written to disk */
    var HasUnsavedChanges(default,never):Bool;
    /** Target type used for any action graphs contained in this resource. Defaults to this resource's type. */
    @:protected
    var ActionGraphTargetType(null,never):cs.system.Type;
    /** Target instance used for any action graphs contained in this resource. Defaults to this resource itself. */
    @:protected
    var ActionGraphTarget(null,never):cs.system.Object;
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
    function SetResolution(resolution:Int):Void;
}
