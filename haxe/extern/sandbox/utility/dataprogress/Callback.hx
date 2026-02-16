package sandbox.utility.dataprogress;

/** Callback delegate for receiving progress updates. */
@:native("Sandbox.Utility.DataProgress.Callback")
final extern class Callback extends system.MulticastDelegate {
    function new(object:cs.system.Object, method:system.IntPtr):Void;
    function BeginInvoke(progress:sandbox.utility.DataProgress, callback:system.AsyncCallback, object:cs.system.Object):system.IAsyncResult;
    function EndInvoke(result:system.IAsyncResult):Void;
    function Invoke(progress:sandbox.utility.DataProgress):Void;
}
