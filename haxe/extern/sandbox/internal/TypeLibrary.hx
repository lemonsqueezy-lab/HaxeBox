package sandbox.internal;

@:native("Sandbox.Internal.TypeLibrary")
extern class TypeLibrary {
    overload function CheckValidationAttributes<T>(obj:T):Bool;
    overload function CheckValidationAttributes<T>(obj:T, errors:Array<String>):Bool;
    /** Create a type instance by its identity. See . */
    overload function Create<T>(ident:Int):T;
    overload function Create<T>(name:String, complainOnMissing:Bool):T;
    overload function Create<T>(type:cs.system.Type, args:Array<cs.system.Object>):T;
    overload function Create(name:String, targetType:cs.system.Type, args:Array<cs.system.Object>):cs.system.Object;
    overload function Create<T>(name:String, args:Array<cs.system.Object>, complainOnMissing:Bool):T;
    /** Create a serialized property from a SerializedObject */
    overload function CreateProperty<T>(title:String, so:sandbox.SerializedObject, attributes:Array<system.Attribute>, parent:sandbox.SerializedObject):sandbox.SerializedProperty;
    overload function CreateProperty<T>(title:String, get:system.Func1<T>, set:system.Action1<T>, attributes:Array<system.Attribute>, parent:sandbox.SerializedObject):sandbox.SerializedProperty;
    /** Find all static methods with given name. */
    overload function FindStaticMethods(methodName:String):system.collections.generic.IEnumerable<sandbox.MethodDescription>;
    overload function FindStaticMethods<T>(methodName:String):system.collections.generic.IEnumerable<sandbox.MethodDescription>;
    /** Deserialize this from bytes. If the type is unknown, T can be an object. */
    overload function FromBytes<T>(data:Array<Int>):T;
    overload function FromBytes<T>(bs:sandbox.ByteStream):T;
    overload function FromBytes<T>(data:system.ReadOnlySpan<Int>):T;
    /** Get single attribute of type, from type */
    function GetAttribute<T>(t:cs.system.Type):T;
    /** Get all attributes of this type */
    overload function GetAttributes<T>():system.collections.generic.IReadOnlyList<T>;
    overload function GetAttributes<T>(t:cs.system.Type):system.collections.generic.IReadOnlyList<T>;
    /** Get a class describing the values of an enum */
    function GetEnumDescription(enumType:cs.system.Type):sandbox.EnumDescription;
    /** Performs with access control checks. Will throw if any arguments aren't in the whitelist. */
    function GetGenericArguments(genericType:cs.system.Type):Array<cs.system.Type>;
    /** Get a list of types that implement this generic type */
    function GetGenericTypes(type:cs.system.Type, types:Array<cs.system.Type>):system.collections.generic.IReadOnlyList<sandbox.TypeDescription>;
    /** Find all member attributes (instances) with given attribute type. */
    overload function GetMemberAttributes<T>():system.collections.generic.IEnumerable<T>;
    overload function GetMemberAttributes<T>(staticMembers:Bool):system.collections.generic.IEnumerable<T>;
    /** Find a by its */
    function GetMemberByIdent(ident:Int):sandbox.MemberDescription;
    /** Find all methods with given attribute, optionally non static */
    function GetMethodsWithAttribute<T>(onlyStatic:Bool):system.collections.generic.IReadOnlyList<system.ValueTuple2<sandbox.MethodDescription,T>>;
    /** Get a list of properties on the target object. To do this we'll just call GetDescription( obj.GetType() ) and return .Properties. Will return an empty array if we can't access these properties. */
    function GetPropertyDescriptions(obj:cs.system.Object, onlyOwn:Bool):Array<sandbox.PropertyDescription>;
    /** Try to get a value from a property on an object */
    function GetPropertyValue(target:cs.system.Object, name:String):cs.system.Object;
    /** Get a SerializedObject version of this object */
    overload function GetSerializedObject(target:cs.system.Object):sandbox.SerializedObject;
    overload function GetSerializedObject(fetchTarget:system.Func1<cs.system.Object>, typeDescription:sandbox.TypeDescription, parent:sandbox.SerializedProperty):sandbox.SerializedObject;
    /** Find the description for templated type */
    overload function GetType<T>():sandbox.TypeDescription;
    overload function GetType(name:String):sandbox.TypeDescription;
    overload function GetType(type:cs.system.Type):sandbox.TypeDescription;
    overload function GetType<T>(name:String):sandbox.TypeDescription;
    overload function GetType(name:String, baseType:cs.system.Type):sandbox.TypeDescription;
    overload function GetType<T>(name:String, preferAddonAssembly:Bool):sandbox.TypeDescription;
    overload function GetType(type:cs.system.Type, name:String, preferAddonAssembly:Bool):sandbox.TypeDescription;
    /** Find a TypeDescription by name */
    function GetTypeByIdent(ident:Int):sandbox.TypeDescription;
    /** Get hash of a type. */
    function GetTypeIdent(type:cs.system.Type):Int;
    /** Get all types */
    overload function GetTypes():system.collections.generic.IEnumerable<sandbox.TypeDescription>;
    overload function GetTypes<T>():system.collections.generic.IReadOnlyList<sandbox.TypeDescription>;
    overload function GetTypes(type:cs.system.Type):system.collections.generic.IReadOnlyList<sandbox.TypeDescription>;
    /** Get all attributes of this type. Returns the type description along with the attribute. This will also return types that inherit the attribute from base classes too. */
    overload function GetTypesWithAttribute<T>():system.collections.generic.IReadOnlyList<system.ValueTuple2<sandbox.TypeDescription,T>>;
    overload function GetTypesWithAttribute<T>(inherited:Bool):system.collections.generic.IReadOnlyList<system.ValueTuple2<sandbox.TypeDescription,T>>;
    /** Return true if this type contains this attribute */
    function HasAttribute<T>(type:cs.system.Type):Bool;
    /** Set a named property on given object. Will perform extra magic for string inputs and try to convert to target property type. */
    function SetProperty(target:cs.system.Object, name:String, value:cs.system.Object):Bool;
    overload function ToBytes<T>(value:T):Array<Int>;
    overload function ToBytes<T>(value:T, bs:sandbox.ByteStream):Void;
    overload function TryGetType<T>(typeDescription:sandbox.TypeDescription):Bool;
    overload function TryGetType(t:cs.system.Type, typeDescription:sandbox.TypeDescription):Bool;
}
