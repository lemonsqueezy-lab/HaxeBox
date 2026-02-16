package sandbox;

/** Every scene should have at least one Camera. */
@:native("Sandbox.CameraComponent")
final extern class CameraComponent extends sandbox.Component {
    function new():Void;
    /** Enables and configures auto exposure on the camera. This is usually controlled by the Tonemapping component. But if you're not using that, it can be controlled manually here. */
    var AutoExposure(default,never):sandbox.cameracomponent.AutoExposureSetup;
    /** The clear flags for this camera. */
    var ClearFlags(default,default):sandbox.ClearFlags;
    /** The background color of this camera's view if there's no 2D Sky in the scene. */
    var BackgroundColor(default,default):Color;
    /** Returns true if this is the main game camera. */
    var IsMainCamera(default,default):Bool;
    /** The axis to use for the field of view. */
    var FovAxis(default,default):sandbox.cameracomponent.Axis;
    /** The field of view of this camera. */
    var FieldOfView(default,default):Single;
    /** The camera's near clip plane distance. This is the closest distance this camera will be able to render. A good value for this is about 5. Below 5 and particularly below 1 you're going to start to see a lot of artifacts like z-fighting. */
    var ZNear(default,default):Single;
    /** The camera's far clip plane distance. This is the furthest distance this camera will be able to render. This value totally depends on the game you're making. Shorter the better, sensible ranges would be between about 1000 and 30000, but if you want it to be further out you can balance that out by making ZNear larger. */
    var ZFar(default,default):Single;
    /** The priority of this camera. Dictates which camera gets rendered on top of another. Higher means it'll be rendered on top. */
    var Priority(default,default):Int;
    /** Whether or not to use orthographic projection instead of perspective. */
    var Orthographic(default,default):Bool;
    /** The orthographic size for this camera while is set to true. */
    var OrthographicHeight(default,default):Single;
    /** The HMD eye that this camera is targeting. Use for the user's monitor (i.e. the companion window). */
    var TargetEye(default,default):sandbox.StereoTargetEye;
    /** A list of tags that will be checked to include specific game objects when rendering this camera. If none are set, it will include everything. */
    var RenderTags(default,default):sandbox.TagSet;
    /** A list of tags that will be checked to exclude specific game objects when rendering this camera. */
    var RenderExcludeTags(default,default):sandbox.TagSet;
    /** The size of the camera represented on the screen. Normalized between 0 and 1. */
    var Viewport(default,default):Vector4;
    /** The texture to draw this camera to. Requires */
    var RenderTarget(default,default):sandbox.Texture;
    /** Render this camera using a different render mode */
    var DebugMode(default,default):sandbox.SceneCameraDebugMode;
    /** Render this camera using a wireframe view. */
    var WireframeMode(default,default):Bool;
    /** The size of the viewport, in screen coordinates */
    var ScreenRect(default,never):sandbox.Rect;
    /** Allows specifying a custom projection matrix for this camera */
    var CustomProjectionMatrix(default,default):Null<Matrix>;
    /** Allows specifying a custom aspect ratio for this camera. By default (or when null) the camera size is screen size or render target size. */
    var CustomSize(default,default):Null<Vector2>;
    /** Get frustum projection matrix. */
    var ProjectionMatrix(default,never):Matrix;
    /** Allows drawing on the camera. This is drawn before the post processing. */
    var Hud(default,never):sandbox.rendering.HudPainter;
    /** Used to draw to the screen. This is drawn on top of everything, so is good for debug overlays etc. */
    var Overlay(default,never):sandbox.rendering.HudPainter;
    /** Enable or disable post processing for this camera. */
    var EnablePostProcessing(default,default):Bool;
    /** If set then we'll trigger post process volumes from this position, instead of the camera's position. */
    var PostProcessAnchor(default,default):sandbox.GameObject;
    var RenderTexture(default,default):sandbox.RenderTextureAsset;
    /** Add a command list to the render */
    function AddCommandList(buffer:sandbox.rendering.CommandList, stage:sandbox.rendering.Stage, order:Int):Void;
    function AddHookAfterOpaque(debugName:String, order:Int, renderEffect:system.Action1<sandbox.SceneCamera>):system.IDisposable;
    /** Obsolete 09/06/2025 */
    function AddHookAfterTransparent(debugName:String, order:Int, renderEffect:system.Action1<sandbox.SceneCamera>):system.IDisposable;
    /** Obsolete 02/10/2025 */
    function AddHookAfterUI(debugName:String, order:Int, renderEffect:system.Action1<sandbox.SceneCamera>):system.IDisposable;
    /** Obsolete 09/06/2025 */
    function AddHookBeforeOverlay(debugName:String, order:Int, renderEffect:system.Action1<sandbox.SceneCamera>):system.IDisposable;
    function BBoxToScreenPixels(bounds:BBox, isBehind:Bool):sandbox.Rect;
    /** Calculates a projection matrix with an oblique clip-plane defined in world space. */
    function CalculateObliqueMatrix(clipPlane:sandbox.Plane):Matrix;
    /** Remove all entries in this stage */
    overload function ClearCommandLists():Void;
    overload function ClearCommandLists(stage:sandbox.rendering.Stage):Void;
    @:protected function DrawGizmos():Void;
    /** Returns the view frustum of the current screen rect. */
    overload function GetFrustum():sandbox.Frustum;
    overload function GetFrustum(screenRect:sandbox.Rect):sandbox.Frustum;
    overload function GetFrustum(screenRect:sandbox.Rect, screenSize:Vector3):sandbox.Frustum;
    @:protected function OnAwake():Void;
    @:protected function OnDestroy():Void;
    @:protected function OnDisabled():Void;
    @:protected function OnEnabled():Void;
    overload function PointToScreenNormal(worldPosition:Vector3):Vector2;
    overload function PointToScreenNormal(worldPosition:Vector3, isBehind:Bool):Vector2;
    overload function PointToScreenPixels(worldPosition:Vector3):Vector2;
    overload function PointToScreenPixels(worldPosition:Vector3, isBehind:Bool):Vector2;
    /** Remove an entry */
    overload function RemoveCommandList(buffer:sandbox.rendering.CommandList):Void;
    overload function RemoveCommandList(buffer:sandbox.rendering.CommandList, stage:sandbox.rendering.Stage):Void;
    /** Render this camera to the target bitmap. */
    function RenderToBitmap(targetBitmap:sandbox.Bitmap):Void;
    function RenderToTexture(target:sandbox.Texture, config:sandbox.rendering.ViewSetup):Bool;
    function Reset():Void;
    function ScreenNormalToRay(normalPosition:Vector3):Ray;
    function ScreenPixelToRay(pixelPosition:Vector2):Ray;
    /** Convert from screen coords to world coords on the near frustum plane. */
    function ScreenToWorld(screen:Vector2):Vector3;
    /** Update a SceneCamera with the settings from this component */
    function UpdateSceneCamera(camera:sandbox.SceneCamera, includeTags:Bool):Void;
}
