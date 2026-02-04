package sandbox.serializedobject;

@:native("Sandbox.SerializedObject.PropertyPreChangeDelegate")
final extern class PropertyPreChangeDelegate {
    function new(object:cs.system.Object, method:system.IntPtr):Void;
    var Target(default,never):cs.system.Object;
    var Method(default,never):system.reflection.MethodInfo;
    function BeginInvoke(property:sandbox.SerializedProperty, callback:system.AsyncCallback, object:cs.system.Object):system.IAsyncResult;
    function EndInvoke(result:system.IAsyncResult):Void;
    function Invoke(property:sandbox.SerializedProperty):Void;
}
