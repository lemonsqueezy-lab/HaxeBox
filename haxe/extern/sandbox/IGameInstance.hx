package sandbox;

/** Todo: make internal - the only thing using ir right now is the binds system */
@:native("Sandbox.IGameInstance")
extern class IGameInstance {
    static var Current(default,never):sandbox.IGameInstance;
    /** True after the game is fully loaded */
    var IsLoading(default,never):Bool;
    var Scene(default,never):sandbox.Scene;
    function GetBind(actionName:String, isDefault:Bool, isCommon:Bool):String;
    function ResetBinds():Void;
    function SaveBinds():Void;
    function SetBind(actionName:String, buttonName:String):Void;
    function TrapButtons(callback:system.Action1<Array<String>>):Void;
}
