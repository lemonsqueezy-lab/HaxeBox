package sandbox;

@:native("Sandbox.MenuConCmdAttribute")
extern class MenuConCmdAttribute extends sandbox.ConCmdAttribute {
    overload function new(name:String):Void;
    overload function new(name:String, flags:sandbox.ConVarFlags):Void;
}
