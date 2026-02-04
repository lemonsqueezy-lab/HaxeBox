package sandbox.ui.transitions;

@:native("Sandbox.UI.Transitions.TransitionFunction")
final extern class TransitionFunction {
    function new(object:cs.system.Object, method:system.IntPtr):Void;
    var Target(default,never):cs.system.Object;
    var Method(default,never):system.reflection.MethodInfo;
    function BeginInvoke(style:sandbox.ui.Styles, delta:Single, callback:system.AsyncCallback, object:cs.system.Object):system.IAsyncResult;
    function EndInvoke(result:system.IAsyncResult):Void;
    function Invoke(style:sandbox.ui.Styles, delta:Single):Void;
}
