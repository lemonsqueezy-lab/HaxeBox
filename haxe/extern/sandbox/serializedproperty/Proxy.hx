package sandbox.serializedproperty;

/** Allows easily creating SerializedProperty classes that wrap other properties. */
@:native("Sandbox.SerializedProperty.Proxy")
extern class Proxy {
    @:protected
    var ProxyTarget(null,never):sandbox.SerializedProperty;
    var Parent(default,never):sandbox.SerializedObject;
    var IsProperty(default,never):Bool;
    var IsField(default,never):Bool;
    var IsMethod(default,never):Bool;
    var Name(default,never):String;
    var DisplayName(default,never):String;
    var Description(default,never):String;
    var GroupName(default,never):String;
    var Order(default,never):Int;
    var IsEditable(default,never):Bool;
    var IsPublic(default,never):Bool;
    var PropertyType(default,never):cs.system.Type;
    var SourceFile(default,never):String;
    var SourceLine(default,never):Int;
    var HasChanges(default,never):Bool;
    var IsValid(default,never):Bool;
    var As(default,never):sandbox.serializedproperty.AsAccessor;
    /** Called when the property value is about to change. */
    var OnPreChange(default,default):sandbox.serializedobject.PropertyPreChangeDelegate;
    /** Called when the property value has changed. */
    var OnChanged(default,default):sandbox.serializedobject.PropertyChangedDelegate;
    /** Called when the property is about to be edited (eg. in a ControlWidget). */
    var OnStartEdit(default,default):sandbox.serializedobject.PropertyStartEditDelegate;
    /** Called when the property has finished being edited (eg. in a ControlWidget). */
    var OnFinishEdit(default,default):sandbox.serializedobject.PropertyFinishEditDelegate;
    /** True if this holds multiple values. That might all be the same. */
    var IsMultipleValues(default,never):Bool;
    /** True if this holds multiple values, and they're all different. */
    var IsMultipleDifferentValues(default,never):Bool;
    /** Get all properties if this holds multiple values */
    var MultipleProperties(default,never):system.collections.generic.IEnumerable<sandbox.SerializedProperty>;
    /** Return true if this is a nullable value type */
    var IsNullable(default,never):Bool;
    /** If this is a nullable type, this will return the nullable target type */
    var NullableType(default,never):cs.system.Type;
    /** True if the value is null */
    var IsNull(default,never):Bool;
    function GetAttributes():system.collections.generic.IEnumerable<system.Attribute>;
    function GetValue<T>(defaultValue:T):T;
    function SetValue<T>(value:T):Void;
    function TryGetAsObject(obj:sandbox.SerializedObject):Bool;
}
