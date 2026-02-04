package sandbox.engine.globalcontext;

@:native("Sandbox.Engine.GlobalContext.GlobalContextScope")
final extern class GlobalContextScope {
    function new(context:sandbox.engine.GlobalContext, clearAsyncContext:Bool):Void;
    function Dispose():Void;
}
