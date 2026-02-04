package sandbox;

@:native("Sandbox.SerializedCollection")
extern class SerializedCollection {
    var KeyType(default,never):cs.system.Type;
    var ValueType(default,never):cs.system.Type;
    var TargetObject(default,never):cs.system.Object;
    var ParentProperty(default,default):sandbox.SerializedProperty;
    var TypeIcon(default,never):String;
    var TypeName(default,never):String;
    var TypeTitle(default,never):String;
    /** Does the target object still exist? */
    var IsValid(default,never):Bool;
    var OnPropertyPreChange(default,default):sandbox.serializedobject.PropertyPreChangeDelegate;
    var OnPropertyChanged(default,default):sandbox.serializedobject.PropertyChangedDelegate;
    var OnPropertyStartEdit(default,default):sandbox.serializedobject.PropertyStartEditDelegate;
    var OnPropertyFinishEdit(default,default):sandbox.serializedobject.PropertyFinishEditDelegate;
    /** True if the target is multiple objects */
    var IsMultipleTargets(default,never):Bool;
    /** A list of actual target objects - if applicable */
    var Targets(default,never):system.collections.generic.IEnumerable<cs.system.Object>;
    var OnEntryAdded(default,default):system.Action;
    var OnEntryRemoved(default,default):system.Action;
    var PropertyToObject(default,default):system.Func2<sandbox.SerializedProperty,sandbox.SerializedObject>;
    @:protected
    var PropertyList(null,null):system.collections.generic.List<sandbox.SerializedProperty>;
    overload function Add(value:cs.system.Object):Bool;
    overload function Add(key:cs.system.Object, value:cs.system.Object):Bool;
    function NewKeyProperty():sandbox.SerializedProperty;
    function Remove(property:sandbox.SerializedProperty):Bool;
    function RemoveAt(index:cs.system.Object):Bool;
    function SetTargetObject(obj:cs.system.Object, property:sandbox.SerializedProperty):Void;
}
