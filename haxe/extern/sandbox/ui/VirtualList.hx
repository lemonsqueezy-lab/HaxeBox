package sandbox.ui;

/** A virtualized, scrollable list panel that only creates item panels when visible. */
@:native("Sandbox.UI.VirtualList")
final extern class VirtualList extends sandbox.ui.BaseVirtualPanel {
    function new():Void;
    /** Fixed height of each item. */
    var ItemHeight(default,default):Single;
    @:protected function GetTotalHeight(itemCount:Int):Single;
    @:protected function GetVisibleRange(first:Int, pastEnd:Int):Void;
    @:protected function PositionPanel(index:Int, panel:sandbox.ui.Panel):Void;
    @:protected function UpdateLayout():Bool;
    @:protected function UpdateLayoutSpacing(spacing:Vector2):Void;
}
