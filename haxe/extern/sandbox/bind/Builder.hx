package sandbox.bind;

/** A helper to create binds between two properties (or whatever you want) Example usage: set "BoolValue" from value of "StringValue" BindSystem.Build.Set( this, "BoolValue" ).From( this, "StringValue" ); */
@:native("Sandbox.Bind.Builder")
final extern class Builder {
    overload function From(source:sandbox.bind.Proxy):sandbox.bind.Link;
    overload function From<T,V>(obj:T, propertyName:system.linq.expressions.Expression<system.Func2<T,V>>):sandbox.bind.Link;
    overload function From<T>(obj:T, targetName:String):sandbox.bind.Link;
    overload function From<T>(obj:T, target:system.reflection.PropertyInfo):sandbox.bind.Link;
    overload function From<T>(read:system.Func1<T>, write:system.Action1<T>):sandbox.bind.Link;
    overload function From<T>(sourceObject:cs.system.Object, read:system.Func1<T>, write:system.Action1<T>):sandbox.bind.Link;
    function FromDictionary<K,V>(dict:system.collections.generic.Dictionary<K,V>, key:K):sandbox.bind.Link;
    function FromObject(obj:cs.system.Object):sandbox.bind.Link;
    /** Makes the bind link one way. The system will not try to write to the target/right hand property. (The one you set via "From" methods) */
    function ReadOnly(makeReadOnly:Bool):sandbox.bind.Builder;
    overload function Set(binding:sandbox.bind.Proxy):sandbox.bind.Builder;
    overload function Set<T,U>(obj:T, read:system.Func1<U>, write:system.Action1<U>):sandbox.bind.Builder;
    overload function Set<T>(obj:T, targetName:String, onChanged:system.Action):sandbox.bind.Builder;
}
