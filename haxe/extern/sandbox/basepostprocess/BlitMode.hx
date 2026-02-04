package sandbox.basepostprocess;

@:native("Sandbox.BasePostProcess.BlitMode")
final extern class BlitMode {
    var Material(default,set):sandbox.Material;

    private inline function set_Material(value:sandbox.Material):sandbox.Material {
        var __value:sandbox.Material = cast value;
        return untyped __cs__("{0}.Material = {1}", this, __value);
    }

    var Attributes(default,set):sandbox.RenderAttributes;

    private inline function set_Attributes(value:sandbox.RenderAttributes):sandbox.RenderAttributes {
        var __value:sandbox.RenderAttributes = cast value;
        return untyped __cs__("{0}.Attributes = {1}", this, __value);
    }

    var RenderStage(default,set):sandbox.rendering.Stage;

    private inline function set_RenderStage(value:sandbox.rendering.Stage):sandbox.rendering.Stage {
        var __value:sandbox.rendering.Stage = cast value;
        return untyped __cs__("{0}.RenderStage = {1}", this, __value);
    }

    var Order(default,set):Int;

    private inline function set_Order(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Order = {1}", this, __value);
    }

    var WantsBackbuffer(default,set):Bool;

    private inline function set_WantsBackbuffer(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.WantsBackbuffer = {1}", this, __value);
    }

    var WantsBackbufferMips(default,set):Bool;

    private inline function set_WantsBackbufferMips(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.WantsBackbufferMips = {1}", this, __value);
    }

    /** Shortcut to build a simple blit mode */
    static function Simple(m:sandbox.Material, stage:sandbox.rendering.Stage, order:Int):sandbox.basepostprocess.BlitMode;
    /** Shortcut to build a blit mode that copies the backbuffer first */
    static function WithBackbuffer(m:sandbox.Material, stage:sandbox.rendering.Stage, order:Int, mip:Bool):sandbox.basepostprocess.BlitMode;
}
