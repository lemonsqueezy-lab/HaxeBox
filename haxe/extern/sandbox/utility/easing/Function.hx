package sandbox.utility.easing;

/** An easing function that transforms the linear input into non linear output. */
@:native("Sandbox.Utility.Easing.Function")
final extern class Function {
    function new(object:cs.system.Object, method:system.IntPtr):Void;
    var Target(default,never):cs.system.Object;
    var Method(default,never):system.reflection.MethodInfo;
    function BeginInvoke(delta:Single, callback:system.AsyncCallback, object:cs.system.Object):system.IAsyncResult;
    function EndInvoke(result:system.IAsyncResult):Single;
    function Invoke(delta:Single):Single;
}
