package sandbox.material;

@:native("Sandbox.Material.FlagsAccessor")
final extern class FlagsAccessor {
    function new(material:sandbox.Material):Void;
    var IsSky(default,never):Bool;
    var IsTranslucent(default,never):Bool;
    var IsAlphaTest(default,never):Bool;
    var IsDecal(default,never):Bool;
    function GetFloat(name:String, defaultValue:Single):Single;
    function GetInt(name:String, defaultValue:Int):Int;
}
