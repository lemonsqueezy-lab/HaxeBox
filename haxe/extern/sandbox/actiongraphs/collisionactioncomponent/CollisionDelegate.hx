package sandbox.actiongraphs.collisionactioncomponent;

@:native("Sandbox.ActionGraphs.CollisionActionComponent.CollisionDelegate")
final extern class CollisionDelegate extends system.MulticastDelegate {
    function new(object:cs.system.Object, method:system.IntPtr):Void;
    function BeginInvoke(other:sandbox.Collision, callback:system.AsyncCallback, object:cs.system.Object):system.IAsyncResult;
    function EndInvoke(result:system.IAsyncResult):Void;
    function Invoke(other:sandbox.Collision):Void;
}
