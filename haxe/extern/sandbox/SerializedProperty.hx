package sandbox;

@:native("Sandbox.SerializedProperty")
extern class SerializedProperty {
    function new():Void;
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
    var IsValid(default,never):Bool;
    /** The source filename, if available */
    var SourceFile(default,never):String;
    /** The line in the source file, if available */
    var SourceLine(default,never):Int;
    /** Returns true if the current set value differs from the actual value */
    var HasChanges(default,never):Bool;
    /** Called when the property value is about to change. */
    var OnPreChange(default,default):sandbox.serializedobject.PropertyPreChangeDelegate;
    /** Called when the property value has changed. */
    var OnChanged(default,default):sandbox.serializedobject.PropertyChangedDelegate;
    /** Called when the property is about to be edited (eg. in a ControlWidget). */
    var OnStartEdit(default,default):sandbox.serializedobject.PropertyStartEditDelegate;
    /** Called when the property has finished being edited (eg. in a ControlWidget). */
    var OnFinishEdit(default,default):sandbox.serializedobject.PropertyFinishEditDelegate;
    var As(default,never):sandbox.serializedproperty.AsAccessor;
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
    static function Create<T>(title:String, get:system.Func1<T>, set:system.Action1<T>, attributes:Array<system.Attribute>):sandbox.SerializedProperty;
    /** Get all attributes from the property. */
    overload function GetAttributes():system.collections.generic.IEnumerable<system.Attribute>;
    overload function GetAttributes<T>():system.collections.generic.IEnumerable<T>;
    overload function GetAttributes(t:cs.system.Type):system.collections.generic.IEnumerable<system.Attribute>;
    /** Get the default value of a specific property type. */
    function GetDefault():cs.system.Object;
    /** If this entry is a dictionary, we can get the key for it here */
    function GetKey():sandbox.SerializedProperty;
    function GetValue<T>(defaultValue:T):T;
    /** Return true if the property has this attribute */
    overload function HasAttribute<T>():Bool;
    overload function HasAttribute(t:cs.system.Type):Bool;
    /** If is method */
    function Invoke():Void;
    /** Our value has changed, maybe our parent would like to know */
    @:protected function NoteChanged():Void;
    @:protected function NoteFinishEdit():Void;
    @:protected function NotePreChange():Void;
    @:protected function NoteStartEdit():Void;
    /** If this is a nullable type, you can use this to toggle between it being null or the default value type */
    function SetNullState(isnull:Bool):Void;
    overload function SetValue<T>(value:T):Void;
    overload function SetValue<T>(value:T, source:sandbox.SerializedProperty):Void;
    /** Returns true if this property should be shown in the inspector */
    function ShouldShow():Bool;
    function TryGetAsObject(obj:sandbox.SerializedObject):Bool;
    function TryGetAttribute<T>(attribute:T):Bool;
    @:protected function ValueToType<T>(value:cs.system.Object, defaultValue:T):T;
}
