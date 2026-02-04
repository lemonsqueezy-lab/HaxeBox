package sandbox.actiongraphs.triggeractioncomponent;

@:native("Sandbox.ActionGraphs.TriggerActionComponent.TriggerDelegate")
final extern class TriggerDelegate {
    function new(object:cs.system.Object, method:system.IntPtr):Void;
    var Target(default,never):cs.system.Object;
    var Method(default,never):system.reflection.MethodInfo;
    function BeginInvoke(other:sandbox.Collider, callback:system.AsyncCallback, object:cs.system.Object):system.IAsyncResult;
    function EndInvoke(result:system.IAsyncResult):Void;
    function Invoke(other:sandbox.Collider):Void;
}
