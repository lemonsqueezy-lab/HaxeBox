package sandbox;

/** Renders any attached PanelComponents to the world in 3D space. */
@:native("Sandbox.WorldPanel")
final extern class WorldPanel extends sandbox.Renderer {
    function new():Void;
    var RenderScale(default,default):Single;
    var LookAtCamera(default,default):Bool;
    var PanelSize(default,default):Vector2;
    var HorizontalAlign(default,default):sandbox.worldpanel.HAlignment;
    var VerticalAlign(default,default):sandbox.worldpanel.VAlignment;
    /** How far can we interact with this world panel? */
    var InteractionRange(default,default):Single;
    @:protected function DrawGizmos():Void;
    function GetPanel():sandbox.ui.Panel;
    @:protected function OnDirty():Void;
    @:protected function OnDisabled():Void;
    @:protected function OnEnabled():Void;
    @:protected function OnPreRender():Void;
    @:protected function OnRenderOptionsChanged():Void;
    /** Tags have been updated */
    @:protected function OnTagsChanged():Void;
}
