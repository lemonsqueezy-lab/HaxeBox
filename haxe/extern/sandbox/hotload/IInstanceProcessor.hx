package sandbox.hotload;

@:native("Sandbox.Hotload.IInstanceProcessor")
extern class IInstanceProcessor {
    function ProcessInstance(oldInstance:cs.system.Object, newInstance:cs.system.Object):Int;
}
