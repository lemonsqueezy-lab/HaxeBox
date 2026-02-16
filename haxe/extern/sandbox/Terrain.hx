package sandbox;

/** Terrain renders heightmap based terrain. */
@:native("Sandbox.Terrain")
final extern class Terrain extends sandbox.Collider {
    function new():Void;
    var EnableCollision(default,default):Bool;
    var Storage(default,default):sandbox.TerrainStorage;
    var MaterialOverride(default,default):sandbox.Material;
    /** Uniform world size of the width and length of the terrain. */
    var TerrainSize(default,default):Single;
    /** World size of the maximum height of the terrain. */
    var TerrainHeight(default,default):Single;
    var ClipMapLodLevels(default,default):Int;
    var ClipMapLodExtentTexels(default,default):Int;
    var SubdivisionFactor(default,default):Int;
    var SubdivisionLodCount(default,default):Int;
    var RenderType(default,default):sandbox.modelrenderer.ShadowRenderType;
    var HeightMap(default,never):sandbox.Texture;
    var ControlMap(default,never):sandbox.Texture;
    /** Call on enable or storage change */
    function Create():Void;
    @:protected function CreatePhysicsShapes(targetBody:sandbox.PhysicsBody, local:Transform):system.collections.generic.IEnumerable<sandbox.PhysicsShape>;
    @:protected function DrawGizmos():Void;
    /** Gets terrain material information at a world position. Returns null if the position is outside terrain bounds. */
    function GetMaterialAtWorldPosition(worldPosition:Vector3):Null<sandbox.terrain.TerrainMaterialInfo>;
    @:protected function OnDisabled():Void;
    @:protected function OnEnabled():Void;
    @:protected function OnPreRender():Void;
    @:protected function OnTagsChanged():Void;
    function RayIntersects(ray:Ray, distance:Single, position:Vector3):Bool;
    /** Downloads dirty regions from the GPU texture maps onto the CPU, updating collider data and making changes saveable. This is used from the editor after modifying. */
    function SyncCPUTexture(flags:sandbox.terrain.SyncFlags, region:sandbox.RectInt):Void;
    /** Updates the GPU texture maps with the CPU data */
    function SyncGPUTexture():Void;
    /** Upload the Terrain buffer, this should be called when materials are added, removed or modified. */
    function UpdateMaterialsBuffer():Void;
}
