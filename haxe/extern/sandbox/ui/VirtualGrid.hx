package sandbox.ui;

/** A virtualized, scrollable grid panel that only creates item panels when visible. */
@:native("Sandbox.UI.VirtualGrid")
final extern class VirtualGrid extends sandbox.ui.BaseVirtualPanel {
    function new():Void;
    /** Fixed width of each item. If < 0, layout may stretch to fill width. */
    var ItemSize(default,default):Vector2;
    @:protected function GetTotalHeight(itemCount:Int):Single;
    @:protected function GetVisibleRange(first:Int, pastEnd:Int):Void;
    @:protected function PositionPanel(index:Int, panel:sandbox.ui.Panel):Void;
    @:protected function UpdateLayout():Bool;
    @:protected function UpdateLayoutSpacing(spacing:Vector2):Void;
}
