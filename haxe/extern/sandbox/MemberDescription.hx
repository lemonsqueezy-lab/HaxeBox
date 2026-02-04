package sandbox;

/** Wraps MemberInfo but with caching and sandboxing. Returned by and . */
@:native("Sandbox.MemberDescription")
extern class MemberDescription {
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
    /** True if we're a property */
    var IsProperty(default,never):Bool;
    /** True if we're a field */
    var IsField(default,never):Bool;
    /** The line number of this member */
    var SourceLine(default,never):Int;
    /** The file containing this member */
    var SourceFile(default,never):String;
    @:protected function CaptureAttributes(member:system.reflection.MemberInfo):Void;
    /** Returns the first of Attributes of the passed in type. Or null. */
    function GetCustomAttribute<T>():T;
    /** Access the full DisplayInfo for this type. This is faster than creating the DisplayInfo every time we need it. */
    function GetDisplayInfo():sandbox.DisplayInfo;
    /** Generate a unique hash to identity this member. */
    @:protected function GetIdentityHash():Int;
    /** Whether or not this has at least one of the specified attribute. */
    overload function HasAttribute<T>():Bool;
    overload function HasAttribute(t:cs.system.Type):Bool;
    /** Returns true if Tags contains this tag */
    function HasTag(tag:String):Bool;
    @:protected function Init(x:system.reflection.MemberInfo):Void;
    /** Utility function to check whether this string matches this type. Will search name and classname. */
    function IsNamed(name:String):Bool;
    function ToString():String;
}
