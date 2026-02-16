package sandbox;

/** A cubemap probe that captures the environment around it. */
@:native("Sandbox.EnvmapProbe")
final extern class EnvmapProbe extends sandbox.Component {
    function new():Void;
    var Mode(default,default):sandbox.envmapprobe.EnvmapProbeMode;
    var Projection(default,default):sandbox.scenecubemap.ProjectionMode;
    var TintColor(default,default):Color;
    var Bounds(default,default):BBox;
    var Feathering(default,default):Single;
    /** Gets or sets the priority level for the object. */
    var Priority(default,default):Int;
    /** If this is set, the EnvmapProbe will use a custom cubemap texture instead of rendering dynamically */
    var Texture(default,default):sandbox.Texture;
    /** The texture that was baked for this envmap probe */
    var BakedTexture(default,default):sandbox.Texture;
    var RenderDynamically(default,default):Bool;
    /** Resolution of the cubemap texture */
    var Resolution(default,default):sandbox.envmapprobe.CubemapResolution;
    var ZNear(default,default):Single;
    var ZFar(default,default):Single;
    var UpdateStrategy(default,default):sandbox.envmapprobe.CubemapDynamicUpdate;
    /** Only update dynamically if we're this close to it */
    var MaxDistance(default,default):Single;
    var DelayBetweenUpdates(default,default):Single;
    var FrameInterval(default,default):Int;
    /** Minimum amount of reflection bounces to render when first enabled before settling, at cost of extra performance on load Often times you don't need this */
    var MultiBounce(default,default):Bool;
    var Dirty(default,default):Bool;
    /** Bake this envmap now. This will stop it being dynamic if it was. */
    function Bake(ct:system.threading.CancellationToken):system.threading.tasks.Task;
    static function BakeAll():system.threading.tasks.Task;
    @:protected function DrawGizmos():Void;
    @:protected function OnDirty():Void;
    @:protected function OnDisabled():Void;
    @:protected function OnEnabled():Void;
    @:protected function OnLoad(context:sandbox.LoadingContext):system.threading.tasks.Task;
    /** Tags have been updated - lets update our tags */
    @:protected function OnTagsChanged():Void;
    @:protected function OnUpdate():Void;
}
