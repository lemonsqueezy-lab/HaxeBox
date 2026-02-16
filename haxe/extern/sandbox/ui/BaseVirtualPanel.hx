package sandbox.ui;

/** Base class for virtualized, scrollable panels that only create item panels when visible. */
@:native("Sandbox.UI.BaseVirtualPanel")
extern class BaseVirtualPanel extends sandbox.ui.Panel {
    /** Initializes the base virtual panel with default styles. */
    @:protected function new():Void;
    /** When true, forces a layout rebuild on the next . */
    var NeedsRebuild(default,default):Bool;
    /** Template used to render an item into a cell panel. */
    var Item(default,default):microsoft.aspnetcore.components.RenderFragment1<cs.system.Object>;
    /** Called when a cell is created. Allows you to fill the cell in */
    var OnCreateCell(default,default):system.Action2<sandbox.ui.Panel,cs.system.Object>;
    /** Called when the last cell has been viewed. This allows you to view more. */
    var OnLastCell(default,default):system.Action;
    /** Replaces the current items. Only triggers a rebuild if the sequence is actually different. When set to an IList (like List<T>), changes to the source list will be automatically detected. */
    var Items(never,default):system.collections.generic.IEnumerable<cs.system.Object>;
    /** Gets the number of items in the panel. */
    var ItemCount(default,never):Int;
    @:protected
    var _cellData(null,never):system.collections.generic.Dictionary<Int,cs.system.Object>;
    @:protected
    var _created(null,never):system.collections.generic.Dictionary<Int,sandbox.ui.Panel>;
    @:protected
    var _removals(null,never):system.collections.generic.List<Int>;
    @:protected
    var _items(null,never):system.collections.generic.List<cs.system.Object>;
    @:protected
    var _lastCellCreated(null,null):Bool;
    /** Adds a single item and marks the panel for rebuild. */
    function AddItem(item:cs.system.Object):Void;
    /** Adds multiple items and marks the panel for rebuild. */
    function AddItems(items:system.collections.generic.IEnumerable<cs.system.Object>):Void;
    /** Clears all items and destroys created panels. */
    function Clear():Void;
    /** Final layout pass for child panels and scroll bounds. */
    @:protected function FinalLayoutChildren(offset:Vector2):Void;
    /** Gets the total height needed to display the specified number of items. */
    @:protected function GetTotalHeight(itemCount:Int):Single;
    @:protected function GetVisibleRange(first:Int, pastEnd:Int):Void;
    /** Returns true if is a valid item index. */
    function HasData(i:Int):Bool;
    /** Inserts an item at the specified index and marks the panel for rebuild. */
    function InsertItem(index:Int, item:cs.system.Object):Void;
    /** Positions a panel at the specified index. */
    @:protected function PositionPanel(index:Int, panel:sandbox.ui.Panel):Void;
    /** Removes the item at the specified index and marks the panel for rebuild. */
    function RemoveAt(index:Int):Void;
    /** Removes the first occurrence of a specific item and marks the panel for rebuild. */
    function RemoveItem(item:cs.system.Object):Bool;
    /** Convenience helper that sets . */
    function SetItems(enumerable:system.collections.generic.IEnumerable<cs.system.Object>):Void;
    /** Per-frame update: adjusts spacing from CSS, updates layout, creates/destroys visible panels. */
    function Tick():Void;
    /** Updates the layout and returns true if the layout changed. */
    @:protected function UpdateLayout():Bool;
    /** Updates the layout spacing based on CSS gaps. */
    @:protected function UpdateLayoutSpacing(spacing:Vector2):Void;
}
