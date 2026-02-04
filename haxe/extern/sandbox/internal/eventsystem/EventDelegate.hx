package sandbox.internal.eventsystem;

@:native("Sandbox.Internal.EventSystem.EventDelegate")
final extern class EventDelegate {
    function new(object:cs.system.Object, method:system.IntPtr):Void;
    var Target(default,never):cs.system.Object;
    var Method(default,never):system.reflection.MethodInfo;
    function BeginInvoke(root:cs.system.Object, parms:Array<cs.system.Object>, callback:system.AsyncCallback, object:cs.system.Object):system.IAsyncResult;
    function EndInvoke(result:system.IAsyncResult):Void;
    function Invoke(root:cs.system.Object, parms:Array<cs.system.Object>):Void;
}
