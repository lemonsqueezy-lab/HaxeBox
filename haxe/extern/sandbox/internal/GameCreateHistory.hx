package sandbox.internal;

@:native("Sandbox.Internal.GameCreateHistory")
extern class GameCreateHistory {
    function new():Void;
    var Package(default,default):sandbox.Package;
    var Config(default,default):system.collections.generic.Dictionary<String,String>;
    static function GetHistory():system.collections.generic.List<sandbox.internal.GameCreateHistory>;
    static function Remove(ident:String):Void;
}
