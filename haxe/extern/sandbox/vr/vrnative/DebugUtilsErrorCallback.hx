package sandbox.vr.vrnative;

@:native("Sandbox.VR.VRNative.DebugUtilsErrorCallback")
final extern class DebugUtilsErrorCallback {
    function new(object:cs.system.Object, method:system.IntPtr):Void;
    var Target(default,never):cs.system.Object;
    var Method(default,never):system.reflection.MethodInfo;
    function BeginInvoke(message:String, callback:system.AsyncCallback, object:cs.system.Object):system.IAsyncResult;
    function EndInvoke(result:system.IAsyncResult):Void;
    function Invoke(message:String):Void;
}
