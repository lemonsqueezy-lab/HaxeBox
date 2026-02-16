package sandbox.vr.vrsystem;

@:native("Sandbox.VR.VRSystem.DebugUtilsErrorCallback")
final extern class DebugUtilsErrorCallback extends system.MulticastDelegate {
    function new(object:cs.system.Object, method:system.IntPtr):Void;
    function BeginInvoke(message:String, callback:system.AsyncCallback, object:cs.system.Object):system.IAsyncResult;
    function EndInvoke(result:system.IAsyncResult):Void;
    function Invoke(message:String):Void;
}
