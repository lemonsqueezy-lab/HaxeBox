package sandbox.actiongraphs.collisionactioncomponent;

@:native("Sandbox.ActionGraphs.CollisionActionComponent.CollisionStopDelegate")
final extern class CollisionStopDelegate extends system.MulticastDelegate {
    function new(object:cs.system.Object, method:system.IntPtr):Void;
    function BeginInvoke(other:sandbox.CollisionStop, callback:system.AsyncCallback, object:cs.system.Object):system.IAsyncResult;
    function EndInvoke(result:system.IAsyncResult):Void;
    function Invoke(other:sandbox.CollisionStop):Void;
}
