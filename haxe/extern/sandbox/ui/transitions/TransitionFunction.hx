package sandbox.ui.transitions;

@:native("Sandbox.UI.Transitions.TransitionFunction")
final extern class TransitionFunction extends system.MulticastDelegate {
    function new(object:cs.system.Object, method:system.IntPtr):Void;
    function BeginInvoke(style:sandbox.ui.Styles, delta:Single, callback:system.AsyncCallback, object:cs.system.Object):system.IAsyncResult;
    function EndInvoke(result:system.IAsyncResult):Void;
    function Invoke(style:sandbox.ui.Styles, delta:Single):Void;
}
