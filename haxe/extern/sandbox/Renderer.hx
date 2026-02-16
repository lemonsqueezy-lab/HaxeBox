package sandbox;

@:native("Sandbox.Renderer")
extern class Renderer extends sandbox.Component {
    @:protected function new():Void;
    var RenderOptions(default,never):sandbox.RenderOptions;
    /** Attributes that are applied to the renderer based on the current material and shader. If the renderer is disabled, the changes are deferred until it is enabled again. Attributes are not saved to disk, and are not cloned when copying the renderer. */
    var Attributes(default,never):sandbox.RenderAttributes;
    /** A command list which is executed immediately before rendering this */
    var ExecuteBefore(default,default):sandbox.rendering.CommandList;
    /** A command list which is executed immediately after rendering this */
    var ExecuteAfter(default,default):sandbox.rendering.CommandList;
    /** Backup the specified RenderAttributes so we can restore them later with */
    @:protected function BackupRenderAttributes(attributes:sandbox.RenderAttributes):Void;
    /** Copy everything from another renderer */
    function CopyFrom(other:sandbox.Renderer):Void;
    @:protected function OnRenderOptionsChanged():Void;
    /** Restore any attributes that were previously backed up with */
    @:protected function RestoreRenderAttributes(attributes:sandbox.RenderAttributes):Void;
}
