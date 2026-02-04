package sandbox;

/** Represents a camera and holds render hooks. This camera can be used to draw tool windows and scene panels. */
@:native("Sandbox.SceneCamera")
final extern class SceneCamera {
    function new(name:String):Void;
    /** Access tonemapping properties of camera */
    var Bloom(default,never):sandbox.scenecamera.BloomAccessor;
    var Attributes(default,never):sandbox.RenderAttributes;
    /** The name of this camera.. for debugging purposes. */
    var Name(default,default):String;
    /** Scene objects with any of these tags won't be rendered by this camera. */
    var ExcludeTags(default,never):sandbox.ITagSet;
    /** Only scene objects with one of these tags will be rendered by this camera. */
    var RenderTags(default,never):sandbox.ITagSet;
    /** Called when rendering the post process pass */
    var OnRenderPostProcess(default,default):system.Action;
    /** Called when rendering the transparent pass */
    var OnRenderOpaque(default,default):system.Action;
    /** Called when rendering the transparent pass */
    var OnRenderTransparent(default,default):system.Action;
    var OnRenderOverlay(default,default):system.Action;
    var OnRenderUI(default,default):system.Action;
    /** The size of the screen. Allows us to work out aspect ratio. For now will get updated automatically on render. */
    var Size(default,default):Vector2;
    /** Control volumetric fog parameters, expect this to take 1-2ms of your GPU frame time. */
    var VolumetricFog(default,default):sandbox.VolumetricFogParameters;
    /** Control fog based on an image. */
    var CubemapFog(default,default):sandbox.CubemapFogController;
    /** The world we're going to render. */
    var World(default,default):sandbox.SceneWorld;
    /** Your camera can render multiple worlds. */
    var Worlds(default,never):system.collections.generic.HashSet<sandbox.SceneWorld>;
    /** The position of the scene's camera. */
    var Position(default,default):Vector3;
    /** The rotation of the scene's camera. */
    var Rotation(default,default):Rotation;
    /** The rotation of the scene's camera. */
    var Angles(default,default):Angles;
    /** The horizontal field of view of the Camera in degrees. */
    var FieldOfView(default,default):Single;
    /** The camera's zFar distance. This is the furthest distance this camera will be able to render. This value totally depends on the game you're making. Shorter the better, sensible ranges would be between about 1000 and 30000, but if you want it to be further out you can balance that out by making znear larger. */
    var ZFar(default,default):Single;
    /** The camera's zNear distance. This is the closest distance this camera will be able to render. A good value for this is about 5. Below 5 and particularly below 1 you're going to start to see a lot of artifacts like z-fighting. */
    var ZNear(default,default):Single;
    /** Whether to use orthographic projection. */
    var Ortho(default,default):Bool;
    /** Height of the ortho when is enabled. */
    var OrthoHeight(default,default):Single;
    /** Render this camera using a different render mode */
    var DebugMode(default,default):sandbox.SceneCameraDebugMode;
    /** Render this camera using a wireframe view. */
    var WireframeMode(default,default):Bool;
    /** What kind of clearing should we do before we begin? */
    var ClearFlags(default,default):sandbox.ClearFlags;
    /** The rect of the screen to render to. This is normalized, between 0 and 1. */
    var Rect(default,default):sandbox.Rect;
    /** Color the scene camera clears the render target to. */
    var BackgroundColor(default,default):Color;
    /** The color of the ambient light. Set it to black for no ambient light, alpha is used for lerping between IBL and constant color. */
    var AmbientLightColor(default,default):Color;
    /** Enable or disable anti-aliasing for this render. */
    var AntiAliasing(default,default):Bool;
    /** Toggle all post processing effects for this camera. The default is on. */
    var EnablePostProcessing(default,default):Bool;
    /** The HMD eye that this camera is targeting. Use for the user's monitor (i.e. the companion window). */
    var TargetEye(default,default):sandbox.StereoTargetEye;
    /** Set this to false if you don't want the stereo renderer to submit this camera's texture to the compositor. This option isn't considered if is . */
    var WantsStereoSubmit(default,default):Bool;
    /** Enable or disable direct lighting */
    var EnableDirectLighting(default,default):Bool;
    /** Enable or disable indirect lighting */
    var EnableIndirectLighting(default,default):Bool;
    /** Allows specifying a custom projection matrix for this camera */
    var CustomProjectionMatrix(default,default):Null<Matrix>;
    function Dispose():Void;
    @:protected function Finalize():Void;
    /** Given a pixel rect return a frustum on the current camera. */
    overload function GetFrustum(pixelRect:sandbox.Rect):sandbox.Frustum;
    overload function GetFrustum(pixelRect:sandbox.Rect, screenSize:Vector3):sandbox.Frustum;
    /** Given a cursor position get a scene aiming ray. */
    overload function GetRay(cursorPosition:Vector3):Ray;
    overload function GetRay(cursorPosition:Vector2, screenSize:Vector3):Ray;
    /** Convert from world coords to screen coords. The results for x and y will be from 0 to . */
    overload function ToScreen(world:Vector3):Vector2;
    overload function ToScreen(world:Vector3, screen:Vector2):Bool;
    /** Convert from world coords to normal screen corrds. The results will be between 0 and 1 */
    function ToScreenNormal(world:Vector3):Vector2;
    function ToString():String;
    /** Convert from screen coords to world coords on the near frustum plane. */
    function ToWorld(screen:Vector2):Vector3;
}
