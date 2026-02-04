package sandbox.actiongraphs.collisionactioncomponent;

@:native("Sandbox.ActionGraphs.CollisionActionComponent.CollisionDelegate")
final extern class CollisionDelegate {
    function new(object:cs.system.Object, method:system.IntPtr):Void;
    var Target(default,never):cs.system.Object;
    var Method(default,never):system.reflection.MethodInfo;
    function BeginInvoke(other:sandbox.Collision, callback:system.AsyncCallback, object:cs.system.Object):system.IAsyncResult;
    function EndInvoke(result:system.IAsyncResult):Void;
    function Invoke(other:sandbox.Collision):Void;
}
