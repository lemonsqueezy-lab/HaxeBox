package sandbox.internal;

/** Interface for a control sheet that manages the display of serialized properties in a structured way. */
@:native("Sandbox.Internal.IControlSheet")
extern class IControlSheet {
    /** We're adding a feature. Normally would store these in a tab control */
    function AddFeature(feature:sandbox.internal.icontrolsheet.Feature):Void;
    /** We're adding a group. Normally would have a Group Panel with the properties as children */
    function AddGroup(group:sandbox.internal.icontrolsheet.Group):Void;
    /** Add properties to a controlsheet, with a minimal of filtering and no sorting. */
    static function AddProperties(sheet:sandbox.internal.IControlSheet, properties:system.collections.generic.List<sandbox.SerializedProperty>, allowFeatures:Bool):Void;
    function AddPropertiesWithGrouping(properties:system.collections.generic.List<sandbox.SerializedProperty>):Void;
    /** Adds properties to the control sheet, filtering them based on the provided filter function. */
    static function FilterSortAndAdd(sheet:sandbox.internal.IControlSheet, q:system.collections.generic.List<sandbox.SerializedProperty>, allowFeatures:Bool):Void;
    /** Remove methods that we have no hope of displaying */
    function RemoveUnusedMethods(properties:system.collections.generic.List<sandbox.SerializedProperty>):Void;
    /** Implement to filter properties that should be displayed in the control sheet. */
    function TestFilter(prop:sandbox.SerializedProperty):Bool;
}
