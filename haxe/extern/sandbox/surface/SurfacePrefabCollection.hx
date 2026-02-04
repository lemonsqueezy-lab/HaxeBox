package sandbox.surface;

/** Holds a dictionary of common prefabs associated with a surface */
@:native("Sandbox.Surface.SurfacePrefabCollection")
final extern class SurfacePrefabCollection {
    /** A prefab to spawn when this surface is hit by a bullet. The prefab should be spawned facing the same direction as the hit normal. It could include decals and particle effects. It should be parented to the surface that it hit. */
    var BulletImpact(default,set):sandbox.GameObject;

    private inline function set_BulletImpact(value:sandbox.GameObject):sandbox.GameObject {
        var __value:sandbox.GameObject = cast value;
        return untyped __cs__("{0}.BulletImpact = {1}", this, __value);
    }

    /** A prefab to spawn when this surface is hit by something blunt. The prefab should be spawned facing the same direction as the hit normal. It could include decals and particle effects. It should be parented to the surface that it hit. */
    var BluntImpact(default,set):sandbox.GameObject;

    private inline function set_BluntImpact(value:sandbox.GameObject):sandbox.GameObject {
        var __value:sandbox.GameObject = cast value;
        return untyped __cs__("{0}.BluntImpact = {1}", this, __value);
    }

}
