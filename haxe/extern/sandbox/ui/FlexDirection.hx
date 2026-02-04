package sandbox.ui;

/** Possible values for flex-direction CSS property. */
@:native("Sandbox.UI.FlexDirection")
extern enum abstract FlexDirection(Int) {
    var Column;
    var ColumnReverse;
    var Row;
    var RowReverse;
}
