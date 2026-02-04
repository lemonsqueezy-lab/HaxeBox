package sandbox.tasks.expirablesynchronizationcontext;

@:native("Sandbox.Tasks.ExpirableSynchronizationContext.Data")
final extern class Data {
    function new(Callback:system.threading.SendOrPostCallback, State:cs.system.Object, Source:sandbox.tasks.ExpirableSynchronizationContext):Void;
    var Callback(default,set):system.threading.SendOrPostCallback;

    private inline function set_Callback(value:system.threading.SendOrPostCallback):system.threading.SendOrPostCallback {
        var __value:system.threading.SendOrPostCallback = cast value;
        return untyped __cs__("{0}.Callback = {1}", this, __value);
    }

    var State(default,set):cs.system.Object;

    private inline function set_State(value:cs.system.Object):cs.system.Object {
        var __value:cs.system.Object = cast value;
        return untyped __cs__("{0}.State = {1}", this, __value);
    }

    var Source(default,set):sandbox.tasks.ExpirableSynchronizationContext;

    private inline function set_Source(value:sandbox.tasks.ExpirableSynchronizationContext):sandbox.tasks.ExpirableSynchronizationContext {
        var __value:sandbox.tasks.ExpirableSynchronizationContext = cast value;
        return untyped __cs__("{0}.Source = {1}", this, __value);
    }

    function Deconstruct(Callback:system.threading.SendOrPostCallback, State:cs.system.Object, Source:sandbox.tasks.ExpirableSynchronizationContext):Void;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.tasks.expirablesynchronizationcontext.Data):Bool;
    function GetHashCode():Int;
    function ToString():String;
}
