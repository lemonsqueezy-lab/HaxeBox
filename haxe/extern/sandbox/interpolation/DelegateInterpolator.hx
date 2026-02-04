package sandbox.interpolation;

@:native("Sandbox.Interpolation.DelegateInterpolator`1.InterpolateDelegate")
final extern class DelegateInterpolator<T> {
    function new(object:cs.system.Object, method:system.IntPtr):Void;
    var Target(default,never):cs.system.Object;
    var Method(default,never):system.reflection.MethodInfo;
    function BeginInvoke(a:T, b:T, delta:Single, callback:system.AsyncCallback, object:cs.system.Object):system.IAsyncResult;
    function EndInvoke(result:system.IAsyncResult):T;
    function Invoke(a:T, b:T, delta:Single):T;
}
