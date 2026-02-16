package sandbox.interpolation;

@:native("Sandbox.Interpolation.DelegateInterpolator`1.InterpolateDelegate")
final extern class DelegateInterpolator<T> extends system.MulticastDelegate {
    function new(object:cs.system.Object, method:system.IntPtr):Void;
    function BeginInvoke(a:T, b:T, delta:Single, callback:system.AsyncCallback, object:cs.system.Object):system.IAsyncResult;
    function EndInvoke(result:system.IAsyncResult):T;
    function Invoke(a:T, b:T, delta:Single):T;
}
