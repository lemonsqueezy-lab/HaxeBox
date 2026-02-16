package sandbox.internal.eventsystem;

@:native("Sandbox.Internal.EventSystem.EventDelegate")
final extern class EventDelegate extends system.MulticastDelegate {
    function new(object:cs.system.Object, method:system.IntPtr):Void;
    function BeginInvoke(root:cs.system.Object, parms:Array<cs.system.Object>, callback:system.AsyncCallback, object:cs.system.Object):system.IAsyncResult;
    function EndInvoke(result:system.IAsyncResult):Void;
    function Invoke(root:cs.system.Object, parms:Array<cs.system.Object>):Void;
}
