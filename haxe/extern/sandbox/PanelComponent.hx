package sandbox;

@:native("Sandbox.PanelComponent")
extern class PanelComponent extends sandbox.Component {
    @:protected function new():Void;
    /** The panel. Can be null if the panel doesn't exist yet. */
    var Panel(default,never):sandbox.ui.Panel;
    function AddClass(className:String):Void;
    function BindClass(className:String, func:system.Func1<Bool>):Void;
    /** When this has changes, we will re-render this panel. This is usually implemented as a HashCode.Combine containing stuff that causes the panel's content to change. */
    @:protected function BuildHash():Int;
    /** Gets overridden by .razor file */
    @:protected function BuildRenderTree(v:microsoft.aspnetcore.components.rendering.RenderTreeBuilder):Void;
    /** Gets overridden by .razor file */
    @:protected function GetRenderTreeChecksum():String;
    function HasClass(className:String):Bool;
    @:protected function OnMouseDown(e:sandbox.ui.MousePanelEvent):Void;
    @:protected function OnMouseMove(e:sandbox.ui.MousePanelEvent):Void;
    @:protected function OnMouseOut(e:sandbox.ui.MousePanelEvent):Void;
    @:protected function OnMouseOver(e:sandbox.ui.MousePanelEvent):Void;
    @:protected function OnMouseUp(e:sandbox.ui.MousePanelEvent):Void;
    @:protected function OnMouseWheel(value:Vector2):Void;
    @:protected function OnParentChanged(oldParent:sandbox.GameObject, newParent:sandbox.GameObject):Void;
    @:protected function OnStart():Void;
    /** Called after the tree has been built. This can happen any time the contents change. */
    @:protected function OnTreeBuilt():Void;
    /** Called when the razor ui has been built. */
    @:protected function OnTreeFirstBuilt():Void;
    function RemoveClass(className:String):Void;
    function SetClass(className:String, enabled:Bool):Void;
    /** Should be called when you want the component to be re-rendered. */
    function StateHasChanged():Void;
}
