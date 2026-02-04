package sandbox.convarsystem;

@:native("Sandbox.ConVarSystem.ConVarChangedDelegate")
final extern class ConVarChangedDelegate {
    function new(object:cs.system.Object, method:system.IntPtr):Void;
    var Target(default,never):cs.system.Object;
    var Method(default,never):system.reflection.MethodInfo;
    function BeginInvoke(command:sandbox.Command, oldValue:String, callback:system.AsyncCallback, object:cs.system.Object):system.IAsyncResult;
    function EndInvoke(result:system.IAsyncResult):Void;
    function Invoke(command:sandbox.Command, oldValue:String):Void;
}
