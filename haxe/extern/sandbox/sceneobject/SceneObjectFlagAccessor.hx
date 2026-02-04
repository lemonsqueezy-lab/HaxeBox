package sandbox.sceneobject;

@:native("Sandbox.SceneObject.SceneObjectFlagAccessor")
extern class SceneObjectFlagAccessor {
    /** Whether this scene object should cast shadows. */
    var CastShadows(default,default):Bool;
    var IsOpaque(default,default):Bool;
    var IsTranslucent(default,default):Bool;
    var IsDecal(default,default):Bool;
    var OverlayLayer(default,default):Bool;
    /** Don't render in the opaque/translucent game passes. This is useful when you want to only render in the Bloom layer, rather than additionally to it. */
    var ExcludeGameLayer(default,default):Bool;
    var ViewModelLayer(default,default):Bool;
    var SkyBoxLayer(default,default):Bool;
    var NeedsLightProbe(default,default):Bool;
    /** True if this object needs cubemap information */
    var NeedsEnvironmentMap(default,default):Bool;
    /** Automatically sets the "FrameBufferCopyTexture" attribute within the material. This does the same thing as Render.CopyFrameBuffer(); except automatically if the pass allows for it. */
    var WantsFrameBufferCopy(default,default):Bool;
    /** Draw this in cubemaps */
    var IncludeInCubemap(default,default):Bool;
    var WantsPrePass(default,default):Bool;
}
