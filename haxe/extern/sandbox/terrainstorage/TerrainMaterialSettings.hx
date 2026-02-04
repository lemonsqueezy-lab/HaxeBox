package sandbox.terrainstorage;

@:native("Sandbox.TerrainStorage.TerrainMaterialSettings")
extern class TerrainMaterialSettings {
    function new():Void;
    var HeightBlendEnabled(default,default):Bool;
    var HeightBlendSharpness(default,default):Single;
}
