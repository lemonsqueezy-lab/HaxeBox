package sandbox.network.networktable;

@:native("Sandbox.Network.NetworkTable.ReadFilter")
final extern class ReadFilter extends system.MulticastDelegate {
    function new(object:cs.system.Object, method:system.IntPtr):Void;
    function BeginInvoke(slot:Int, entry:sandbox.network.networktable.Entry, callback:system.AsyncCallback, object:cs.system.Object):system.IAsyncResult;
    function EndInvoke(result:system.IAsyncResult):Bool;
    function Invoke(slot:Int, entry:sandbox.network.networktable.Entry):Bool;
}
