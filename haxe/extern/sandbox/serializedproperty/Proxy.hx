package sandbox.serializedproperty;

/** Allows easily creating SerializedProperty classes that wrap other properties. */
@:native("Sandbox.SerializedProperty.Proxy")
extern class Proxy extends sandbox.SerializedProperty {
    @:protected function new():Void;
    @:protected
    var ProxyTarget(null,never):sandbox.SerializedProperty;
    function GetAttributes():system.collections.generic.IEnumerable<system.Attribute>;
    function GetValue<T>(defaultValue:T):T;
    function SetValue<T>(value:T):Void;
    function TryGetAsObject(obj:sandbox.SerializedObject):Bool;
}
