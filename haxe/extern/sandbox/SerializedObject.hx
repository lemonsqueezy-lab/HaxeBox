package sandbox;

/** An object (or data) that can be accessed as an object */
@:native("Sandbox.SerializedObject")
extern class SerializedObject {
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
    @:protected
    var PropertyList(null,null):system.collections.generic.List<sandbox.SerializedProperty>;
    function GetEnumerator():system.collections.generic.IEnumerator<sandbox.SerializedProperty>;
    function GetProperty(v:String):sandbox.SerializedProperty;
    /** It's good manners for a changed SerializedProperty to tell its parent on set. That way the parent can cascade changes up the tree. This is particularly important if the tree includes struct types - because those values will need to be re-set on any ParentProperty's. */
    function NoteChanged(childProperty:sandbox.SerializedProperty):Void;
    function NoteFinishEdit(childProperty:sandbox.SerializedProperty):Void;
    function NotePreChange(childProperty:sandbox.SerializedProperty):Void;
    function NoteStartEdit(childProperty:sandbox.SerializedProperty):Void;
    /** Called right before enumeration, to allow derivitives react to changes */
    @:protected function PrepareEnumerator():Void;
    function TryGetProperty(v:String, prop:sandbox.SerializedProperty):Bool;
}
