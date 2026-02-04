package sandbox.utility.dataprogress;

/** Callback delegate for receiving progress updates. */
@:native("Sandbox.Utility.DataProgress.Callback")
final extern class Callback {
    function new(object:cs.system.Object, method:system.IntPtr):Void;
    var Target(default,never):cs.system.Object;
    var Method(default,never):system.reflection.MethodInfo;
    function BeginInvoke(progress:sandbox.utility.DataProgress, callback:system.AsyncCallback, object:cs.system.Object):system.IAsyncResult;
    function EndInvoke(result:system.IAsyncResult):Void;
    function Invoke(progress:sandbox.utility.DataProgress):Void;
}
