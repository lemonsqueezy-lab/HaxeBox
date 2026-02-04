package sandbox;

/** Describes a type. We use this class to wrap and return System.Type's that are safe to interact with. Returned by . */
@:native("Sandbox.TypeDescription")
final extern class TypeDescription {
    /** The type this class describes. */
    var TargetType(default,never):cs.system.Type;
    /** The base type. This can return null if the type isn't in the type library! */
    var BaseType(default,never):sandbox.TypeDescription;
    /** Whether the class is valid or not, i.e. whether the type still exists. */
    var IsValid(default,never):Bool;
    /** All members (methods, properties, etc) of this type. */
    var Members(default,never):Array<sandbox.MemberDescription>;
    /** Members (methods, properties, etc) declared by exactly this type, and not inherited. */
    var DeclaredMembers(default,never):Array<sandbox.MemberDescription>;
    /** All methods of this type. */
    var Methods(default,never):Array<sandbox.MethodDescription>;
    /** All properties of this type. */
    var Properties(default,never):Array<sandbox.PropertyDescription>;
    /** All fields on this type. */
    var Fields(default,never):Array<sandbox.FieldDescription>;
    /** True if the target type is an interface */
    var IsInterface(default,never):Bool;
    /** True if the target type is an enum */
    var IsEnum(default,never):Bool;
    /** True if the target type is static */
    var IsStatic(default,never):Bool;
    /** True if the target type is a class */
    var IsClass(default,never):Bool;
    /** True if the target type is a value */
    var IsValueType(default,never):Bool;
    /** Gets a value indicating whether the System.Type is abstract and must be overridden. */
    var IsAbstract(default,never):Bool;
    /** Name of this type. */
    var Name(default,never):String;
    /** Namespace of this type. */
    var Namespace(default,never):String;
    /** Full name of this type. */
    var FullName(default,never):String;
    var Title(default,never):String;
    var Description(default,never):String;
    var Icon(default,never):String;
    var Group(default,never):String;
    var Order(default,never):Int;
    /** Tags are set via the [Tag] attribute */
    var Tags(default,never):Array<String>;
    var Aliases(default,never):Array<String>;
    /** An integer that represents this type. Based off the class name. */
    var Identity(default,never):Int;
    /** A string representing this class name. Historically this was provided by [Library( classname )]. If no special name is provided, this will be type.Name. */
    var ClassName(default,never):String;
    /** The line number of this member */
    var SourceLine(default,never):Int;
    /** The file containing this member */
    var SourceFile(default,never):String;
    /** True if we're a generic type */
    var IsGenericType(default,never):Bool;
    /** If we're a generic type this will return our generic parameters. */
    var GenericArguments(default,never):Array<cs.system.Type>;
    /** If we implement any interfaces they will be here */
    var Interfaces(default,never):Array<cs.system.Type>;
    /** Create an instance of this class, return it as a T. If it can't be cast to a T we won't create it and will return null. */
    function Create<T>(args:Array<cs.system.Object>):T;
    /** Create an instance of this class using generic arguments We're going to assume you know what you're doing here and let it throw any exceptions it wants. */
    function CreateGeneric<T>(typeArgs:Array<cs.system.Type>, args:Array<cs.system.Object>):T;
    /** Returns the first attribute of given type, if any are present. */
    function GetAttribute<T>(inherited:Bool):T;
    /** Returns all attributes of given type, if any are present. */
    function GetAttributes<T>(inherited:Bool):system.collections.generic.IEnumerable<T>;
    /** Get a method by name (will not find static methods) */
    function GetMethod(name:String):sandbox.MethodDescription;
    /** Get property by name (will not find static properties) */
    function GetProperty(name:String):sandbox.PropertyDescription;
    /** Get a method by name (will not find static methods) */
    function GetStaticMethod(name:String):sandbox.MethodDescription;
    /** Get static property by name */
    function GetStaticProperty(name:String):sandbox.PropertyDescription;
    /** Get value by field or property name, and which type the member is declared to store (will not find static members) */
    function GetStaticValue(name:String):cs.system.Object;
    /** Get value by field or property name (will not find static members) */
    function GetValue(instance:cs.system.Object, name:String):cs.system.Object;
    /** Returns true if the class has this attribute */
    function HasAttribute<T>(inherited:Bool):Bool;
    /** True if we have this tag. */
    function HasTag(tag:String):Bool;
    /** Returns true if this is named the passed name, either through classname, target class name or an alias */
    function IsNamed(name:String):Bool;
    /** For generic type definitions, create a type by substituting the given types for each type parameter. Returns null if any of the type arguments violate the generic constraints. */
    function MakeGenericType(inargs:Array<cs.system.Type>):cs.system.Type;
    /** Set static value by field or property name */
    function SetStaticValue(name:String, value:cs.system.Object):Bool;
    /** Set value by field or property name (will not set static members) */
    function SetValue(instance:cs.system.Object, name:String, value:cs.system.Object):Bool;
    function ToString():String;
}
