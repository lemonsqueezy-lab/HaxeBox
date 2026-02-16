package sandbox;

/** Stores heightmaps, control maps and materials. */
@:native("Sandbox.TerrainStorage")
extern class TerrainStorage extends sandbox.GameResource {
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
    function SetResolution(resolution:Int):Void;
}
