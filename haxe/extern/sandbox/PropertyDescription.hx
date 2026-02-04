package sandbox;

/** Describes a property. We use this class to wrap and return PropertyInfo's that are safe to interact with. Returned by and . */
@:native("Sandbox.PropertyDescription")
final extern class PropertyDescription {
    var IsProperty(default,never):Bool;
    /** Whether this property can be written to. */
    var CanWrite(default,never):Bool;
    /** Whether this property can be read. */
    var CanRead(default,never):Bool;
    /** Whether the getter of this property is public. */
    var IsGetMethodPublic(default,never):Bool;
    /** Whether the setter of this property is public. */
    var IsSetMethodPublic(default,never):Bool;
    /** Property type. */
    var PropertyType(default,never):cs.system.Type;
    /** True if this property has index parameters */
    var IsIndexer(default,never):Bool;
    /** The type that we're a member of */
    var TypeDescription(default,never):sandbox.TypeDescription;
    /** Name of this type member. */
    var Name(default,never):String;
    /** An integer that represents this member. Based off its type and name. */
    var Identity(default,never):Int;
    /** Display name or title of this type member. */
    var Title(default,never):String;
    /** Description of this type member. This usually provided from the summary XML comment above the definition. */
    var Description(default,never):String;
    /** The icon for this, if provided via the [Icon] attribute */
    var Icon(default,never):String;
    /** The group - usually provided via the [Group] attribute */
    var Group(default,never):String;
    /** If this is marked as [ReadOnly] */
    var ReadOnly(default,never):Bool;
    /** The display order - usually provided via the [Order] attribute */
    var Order(default,never):Int;
    /** Tags are usually provided via the [Tags] attribute */
    var Tags(default,never):Array<String>;
    /** Aliases allow this to be found by alternative names. */
    var Aliases(default,never):Array<String>;
    /** Attributes on this member */
    var Attributes(default,never):Array<system.Attribute>;
    /** True if static */
    @:protected
    var IsStatic(default,null):Bool;
    /** True if publicly accessible */
    @:protected
    var IsPublic(default,null):Bool;
    @:protected
    var IsFamily(default,null):Bool;
    /** True if we're a method */
    var IsMethod(default,never):Bool;
    /** True if we're a field */
    var IsField(default,never):Bool;
    /** The line number of this member */
    var SourceLine(default,never):Int;
    /** The file containing this member */
    var SourceFile(default,never):String;
    function CheckValidationAttributes(obj:cs.system.Object, errors:Array<String>, name:String):Bool;
    /** Get the value of this property on given object. */
    function GetValue(obj:cs.system.Object):cs.system.Object;
    /** Set the value of this property on given object. */
    function SetValue(obj:cs.system.Object, value:cs.system.Object):Void;
}
