package sandbox;

@:native("Sandbox.Rpc")
final extern class Rpc {
    /** The that is calling this method. */
    static var Caller(default,never):sandbox.Connection;
    /** The id of the that is calling this method. */
    static var CallerId(default,never):system.Guid;
    /** Whether we're currently being called from a remote . */
    static var Calling(default,never):Bool;
    /** Filter the recipients of any Rpc called in this scope to exclude the specified . */
    static overload function FilterExclude(connection:sandbox.Connection):system.IDisposable;
    static overload function FilterExclude(predicate:system.Predicate<sandbox.Connection>):system.IDisposable;
    static overload function FilterExclude(connections:system.collections.generic.IEnumerable<sandbox.Connection>):system.IDisposable;
    /** Filter the recipients of any Rpc called in this scope to only include the specified . */
    static overload function FilterInclude(connection:sandbox.Connection):system.IDisposable;
    static overload function FilterInclude(predicate:system.Predicate<sandbox.Connection>):system.IDisposable;
    static overload function FilterInclude(connections:system.collections.generic.IEnumerable<sandbox.Connection>):system.IDisposable;
    static overload function OnCallInstanceRpc(system:sandbox.GameObjectSystem<Dynamic>, m:sandbox.WrappedMethod<Dynamic>, argumentList:Array<cs.system.Object>):Void;
    static overload function OnCallInstanceRpc(go:sandbox.GameObject, component:sandbox.Component, m:sandbox.WrappedMethod<Dynamic>, argumentList:Array<cs.system.Object>):Void;
    /** Called when a static RPC is called with object parameters. */
    static overload function OnCallRpc(m:sandbox.WrappedMethod<Dynamic>, argumentList:Array<cs.system.Object>):Void;
    static overload function OnCallRpc<T>(m:sandbox.WrappedMethod<Dynamic>, argument:Array<T>):Void;
    /** Called right before calling an RPC function. */
    static function PreCall():Void;
}
