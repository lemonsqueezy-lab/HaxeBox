package sandbox.internal.icontrolsheet;

/** A feature is usually displayed as a tab, to break things up in the inspector. They can sometimes be turned on and off. */
@:native("Sandbox.Internal.IControlSheet.Feature")
final extern class Feature {
    function new(properties:system.collections.generic.List<sandbox.SerializedProperty>):Void;
    /** The name of the feature, usually displayed as a tab title in the inspector. */
    var Name(default,default):String;
    /** The description of the feature */
    var Description(default,default):String;
    /** The icon of the feature */
    var Icon(default,default):String;
    /** Allows tinting this feature, for some reason */
    var Tint(default,default):sandbox.EditorTint;
    /** The properties that are part of this feature, usually displayed together in the inspector. */
    var Properties(default,default):system.collections.generic.List<sandbox.SerializedProperty>;
    /** If we have a FeatureEnabled property, this will be it. If not then we assume it should always be enabled. */
    var EnabledProperty(default,default):sandbox.SerializedProperty;
}
