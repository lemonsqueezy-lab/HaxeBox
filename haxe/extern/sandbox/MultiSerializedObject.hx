package sandbox;

/** An object (or data) that can be accessed as an object */
@:native("Sandbox.MultiSerializedObject")
extern class MultiSerializedObject {
    function new():Void;
    var TypeIcon(default,never):String;
    var TypeName(default,never):String;
    var TypeTitle(default,never):String;
    var IsValid(default,never):Bool;
    /** True if the target is multiple objects */
    var IsMultipleTargets(default,never):Bool;
    /** A list of actual target objects - if applicable */
    var Targets(default,never):system.collections.generic.IEnumerable<cs.system.Object>;
    var ParentProperty(default,default):sandbox.SerializedProperty;
    var OnPropertyPreChange(default,default):sandbox.serializedobject.PropertyPreChangeDelegate;
    var OnPropertyChanged(default,default):sandbox.serializedobject.PropertyChangedDelegate;
    var OnPropertyStartEdit(default,default):sandbox.serializedobject.PropertyStartEditDelegate;
    var OnPropertyFinishEdit(default,default):sandbox.serializedobject.PropertyFinishEditDelegate;
    @:protected
    var PropertyList(null,null):system.collections.generic.List<sandbox.SerializedProperty>;
    /** Add an object. Don't forget to rebuild after editing! */
    function Add(obj:sandbox.SerializedObject):Void;
    /** Rebuild the object after modifying. This updates PropertyList. */
    function Rebuild():Void;
}
