package sandbox;

/** Describes a method. We use this class to wrap and return MethodInfo's that are safe to interact with. Returned by and . */
@:native("Sandbox.MethodDescription")
final extern class MethodDescription extends sandbox.MemberDescription {
    var IsSpecialName(default,never):Bool;
    var IsVirtual(default,never):Bool;
    /** Gets the return type of this method. */
    var ReturnType(default,never):cs.system.Type;
    /** Gets a list of parameters expected by this method */
    var Parameters(default,never):Array<system.reflection.ParameterInfo>;
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
