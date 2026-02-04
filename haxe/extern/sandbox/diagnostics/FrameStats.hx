package sandbox.diagnostics;

/** Stats returned from the engine each frame describing what was rendered, and how much of it. */
@:native("Sandbox.Diagnostics.FrameStats")
final extern class FrameStats {
    static var Current(default,never):sandbox.diagnostics.FrameStats;
    /** Number of objects rendered that passed the cull checks. */
    var ObjectsRendered(default,set):Float;

    private inline function set_ObjectsRendered(value:Float):Float {
        var __value:Float = cast value;
        return untyped __cs__("{0}.ObjectsRendered = {1}", this, __value);
    }

    /** Total number of triangles rendered */
    var TrianglesRendered(default,set):Float;

    private inline function set_TrianglesRendered(value:Float):Float {
        var __value:Float = cast value;
        return untyped __cs__("{0}.TrianglesRendered = {1}", this, __value);
    }

    /** Number of draw calls */
    var DrawCalls(default,set):Float;

    private inline function set_DrawCalls(value:Float):Float {
        var __value:Float = cast value;
        return untyped __cs__("{0}.DrawCalls = {1}", this, __value);
    }

    /** Number of scenesystem material changes */
    var MaterialChanges(default,set):Float;

    private inline function set_MaterialChanges(value:Float):Float {
        var __value:Float = cast value;
        return untyped __cs__("{0}.MaterialChanges = {1}", this, __value);
    }

    /** Number of display lists submitted to the GPU */
    var DisplayLists(default,set):Float;

    private inline function set_DisplayLists(value:Float):Float {
        var __value:Float = cast value;
        return untyped __cs__("{0}.DisplayLists = {1}", this, __value);
    }

    /** Number of scene system views rendered */
    var SceneViewsRendered(default,set):Float;

    private inline function set_SceneViewsRendered(value:Float):Float {
        var __value:Float = cast value;
        return untyped __cs__("{0}.SceneViewsRendered = {1}", this, __value);
    }

    /** Number of render target resolves */
    var RenderTargetResolves(default,set):Float;

    private inline function set_RenderTargetResolves(value:Float):Float {
        var __value:Float = cast value;
        return untyped __cs__("{0}.RenderTargetResolves = {1}", this, __value);
    }

    /** Number of objects culled by static visibility (vis) */
    var ObjectsCulledByVis(default,set):Float;

    private inline function set_ObjectsCulledByVis(value:Float):Float {
        var __value:Float = cast value;
        return untyped __cs__("{0}.ObjectsCulledByVis = {1}", this, __value);
    }

    /** Number of objects culled by screen size */
    var ObjectsCulledByScreenSize(default,set):Float;

    private inline function set_ObjectsCulledByScreenSize(value:Float):Float {
        var __value:Float = cast value;
        return untyped __cs__("{0}.ObjectsCulledByScreenSize = {1}", this, __value);
    }

    /** Number of objects culled by distance fading */
    var ObjectsCulledByFade(default,set):Float;

    private inline function set_ObjectsCulledByFade(value:Float):Float {
        var __value:Float = cast value;
        return untyped __cs__("{0}.ObjectsCulledByFade = {1}", this, __value);
    }

    /** Number of objects currently being distance-faded */
    var ObjectsFading(default,set):Float;

    private inline function set_ObjectsFading(value:Float):Float {
        var __value:Float = cast value;
        return untyped __cs__("{0}.ObjectsFading = {1}", this, __value);
    }

    /** Number of lights in view that cast shadows */
    var ShadowedLightsInView(default,set):Float;

    private inline function set_ShadowedLightsInView(value:Float):Float {
        var __value:Float = cast value;
        return untyped __cs__("{0}.ShadowedLightsInView = {1}", this, __value);
    }

    /** Number of lights in view that don't cast shadows */
    var UnshadowedLightsInView(default,set):Float;

    private inline function set_UnshadowedLightsInView(value:Float):Float {
        var __value:Float = cast value;
        return untyped __cs__("{0}.UnshadowedLightsInView = {1}", this, __value);
    }

    /** Number of shadow maps rendered this frame */
    var ShadowMaps(default,set):Float;

    private inline function set_ShadowMaps(value:Float):Float {
        var __value:Float = cast value;
        return untyped __cs__("{0}.ShadowMaps = {1}", this, __value);
    }

}
