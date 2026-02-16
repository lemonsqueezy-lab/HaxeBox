package sandbox.vr.vrsystem;

@:native("Sandbox.VR.VRSystem.DebugUtilsMessengerCallback")
final extern class DebugUtilsMessengerCallback extends system.MulticastDelegate {
    function new(object:cs.system.Object, method:system.IntPtr):Void;
    function BeginInvoke(message:String, type:facepunch.xr.DebugCallbackType, callback:system.AsyncCallback, object:cs.system.Object):system.IAsyncResult;
    function EndInvoke(result:system.IAsyncResult):Void;
    function Invoke(message:String, type:facepunch.xr.DebugCallbackType):Void;
}
