package sandbox.internal;

/** Provides internal class name for DisplayInfo of a member or a type. */
@:native("Sandbox.Internal.IClassNameProvider")
extern class IClassNameProvider {
    /** The class name. Typically a class name is all lower case, has spaces replaced by underscores (_) or dashes (-) and contains no other special symbols. */
    var Value(default,never):String;
}
