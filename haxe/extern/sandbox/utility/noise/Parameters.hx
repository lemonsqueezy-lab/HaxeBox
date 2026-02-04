package sandbox.utility.noise;

/** Parameters for constructing a noise field. Use if you want a noise field made from multiple octaves. */
@:native("Sandbox.Utility.Noise.Parameters")
extern class Parameters {
    /** Parameters for constructing a noise field. Use if you want a noise field made from multiple octaves. */
    function new(Seed:Int, Frequency:Single):Void;
    @:protected
    var EqualityContract(null,never):cs.system.Type;
    /** Seed state to initialize the field with. */
    var Seed(default,default):Int;
    /** How quickly should samples change across space. */
    var Frequency(default,default):Single;
    function Deconstruct(Seed:Int, Frequency:Single):Void;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.utility.noise.Parameters):Bool;
    function GetHashCode():Int;
    @:protected function PrintMembers(builder:system.text.StringBuilder):Bool;
    function ToString():String;
}
