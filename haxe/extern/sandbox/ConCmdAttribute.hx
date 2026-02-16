package sandbox;

@:native("Sandbox.ConCmdAttribute")
extern class ConCmdAttribute extends sandbox.ConVarAttribute {
    function new(name:String, flags:sandbox.ConVarFlags):Void;
}
