package sandbox.internal.icontrolsheet;

/** A group is a collection of properties that are related to each other, and can be displayed together in the inspector, usually with a title. */
@:native("Sandbox.Internal.IControlSheet.Group")
final extern class Group {
    function new(properties:system.collections.generic.List<sandbox.SerializedProperty>):Void;
    /** The name of the group, usually displayed as a title in the inspector. */
    var Name(default,default):String;
    /** The properties that are part of this group, usually displayed together in the inspector. */
    var Properties(default,default):system.collections.generic.List<sandbox.SerializedProperty>;
}
