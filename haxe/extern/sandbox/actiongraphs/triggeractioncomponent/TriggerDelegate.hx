package sandbox.actiongraphs.triggeractioncomponent;

@:native("Sandbox.ActionGraphs.TriggerActionComponent.TriggerDelegate")
final extern class TriggerDelegate extends system.MulticastDelegate {
    function new(object:cs.system.Object, method:system.IntPtr):Void;
    function BeginInvoke(other:sandbox.Collider, callback:system.AsyncCallback, object:cs.system.Object):system.IAsyncResult;
    function EndInvoke(result:system.IAsyncResult):Void;
    function Invoke(other:sandbox.Collider):Void;
}
