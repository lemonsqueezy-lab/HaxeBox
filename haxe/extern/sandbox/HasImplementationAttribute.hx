package sandbox;

/** In ActionGraph, this type parameter can only be satisfied by a type TArg, such that there exists at least one non-abstract type that extends / implements both TArg and . */
@:native("Sandbox.HasImplementationAttribute")
final extern class HasImplementationAttribute {
    function new(baseType:cs.system.Type):Void;
    /** Base class or interface for which there must exist an extending / implementing type. */
    var BaseType(default,never):cs.system.Type;
    var TypeId(default,never):cs.system.Object;
}
