package sandbox;

@:native("Sandbox.SerializedCollection")
extern class SerializedCollection extends sandbox.SerializedObject {
    @:protected function new():Void;
    var KeyType(default,never):cs.system.Type;
    var ValueType(default,never):cs.system.Type;
    var TargetObject(default,never):cs.system.Object;
    var OnEntryAdded(default,default):system.Action;
    var OnEntryRemoved(default,default):system.Action;
    var PropertyToObject(default,default):system.Func2<sandbox.SerializedProperty,sandbox.SerializedObject>;
    overload function Add(value:cs.system.Object):Bool;
    overload function Add(key:cs.system.Object, value:cs.system.Object):Bool;
    function NewKeyProperty():sandbox.SerializedProperty;
    function Remove(property:sandbox.SerializedProperty):Bool;
    function RemoveAt(index:cs.system.Object):Bool;
    function SetTargetObject(obj:cs.system.Object, property:sandbox.SerializedProperty):Void;
}
