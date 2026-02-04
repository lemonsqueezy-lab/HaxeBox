package sandbox;

/** Describes a method. We use this class to wrap and return MethodInfo's that are safe to interact with. Returned by and . */
@:native("Sandbox.MethodDescription")
final extern class MethodDescription {
    /** Returns true - because this is a method */
    var IsMethod(default,never):Bool;
    var IsSpecialName(default,never):Bool;
    var IsVirtual(default,never):Bool;
    /** Gets the return type of this method. */
    var ReturnType(default,never):cs.system.Type;
    /** Gets a list of parameters expected by this method */
    var Parameters(default,never):Array<system.reflection.ParameterInfo>;
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
    /** True if we're a property */
    var IsProperty(default,never):Bool;
    /** True if we're a field */
    var IsField(default,never):Bool;
    /** The line number of this member */
    var SourceLine(default,never):Int;
    /** The file containing this member */
    var SourceFile(default,never):String;
    /** Creates a delegate bound to this method. */
    overload function CreateDelegate<T>():T;
    overload function CreateDelegate(delegateType:cs.system.Type):system.Delegate;
    overload function CreateDelegate<T>(target:cs.system.Object):T;
    overload function CreateDelegate(delegateType:cs.system.Type, target:cs.system.Object):system.Delegate;
    @:protected function GetIdentityHash():Int;
    /** Invokes this method. */
    function Invoke(targetObject:cs.system.Object, parameters:Array<cs.system.Object>):Void;
    /** Invokes this method and returns a value. */
    function InvokeWithReturn<T>(targetObject:cs.system.Object, parameters:Array<cs.system.Object>):T;
}
