package sandbox.vr.vrnative;

@:native("Sandbox.VR.VRNative.DebugUtilsMessengerCallback")
final extern class DebugUtilsMessengerCallback {
    function new(object:cs.system.Object, method:system.IntPtr):Void;
    var Target(default,never):cs.system.Object;
    var Method(default,never):system.reflection.MethodInfo;
    function BeginInvoke(message:String, type:facepunch.xr.DebugCallbackType, callback:system.AsyncCallback, object:cs.system.Object):system.IAsyncResult;
    function EndInvoke(result:system.IAsyncResult):Void;
    function Invoke(message:String, type:facepunch.xr.DebugCallbackType):Void;
}
