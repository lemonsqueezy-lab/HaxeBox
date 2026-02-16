package sandbox.ui;

/** A root panel. Serves as a container for other panels, handles things such as rendering. */
@:native("Sandbox.UI.RootPanel")
extern class RootPanel extends sandbox.ui.Panel {
    function new():Void;
    /** Bounds of the panel, i.e. its size and position on the screen. */
    var PanelBounds(default,default):sandbox.Rect;
    /** The scale of this panel and its children. */
    @:protected
    var Scale(default,null):Single;
    /** If set to true this panel won't be rendered to the screen like a normal panel. This is true when the panel is drawn via other means (like as a world panel). */
    var RenderedManually(default,default):Bool;
    /** True if this is a world panel, so should be skipped when determining cursor visibility etc */
    var IsWorldPanel(default,default):Bool;
    /** If this panel belongs to a VR overlay */
    var IsVR(default,never):Bool;
    /** If this panel should be rendered with ~4K resolution. */
    var IsHighQualityVR(default,never):Bool;
    function Delete(immediate:Bool):Void;
    function OnDeleted():Void;
    function OnLayout(layoutRect:sandbox.Rect):Void;
    /** Render this panel manually. This gives more flexibility to where UI is rendered, to texture for example. must be set to true. */
    function RenderManual(opacity:Single):Void;
    /** Called before layout to lock the bounds of this root panel to the screen size (which is passed). Internally this sets PanelBounds to rect and calls UpdateScale. */
    @:protected function UpdateBounds(rect:sandbox.Rect):Void;
    /** Work out scaling here. Default is to scale relative to the screen being 1920 wide. ie - scale = screensize.Width / 1920.0f; */
    @:protected function UpdateScale(screenSize:sandbox.Rect):Void;
}
