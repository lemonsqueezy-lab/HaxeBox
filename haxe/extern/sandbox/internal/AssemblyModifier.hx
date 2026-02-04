package sandbox.internal;

@:native("Sandbox.Internal.AssemblyModifier")
extern class AssemblyModifier {
    function new():Void;
    var Rename(default,default):String;
    var ChangeReference(default,default):system.collections.generic.Dictionary<String,String>;
    function AddResolvable(assembly:Array<Int>):Void;
    function Modify(dllBytes:Array<Int>):Array<Int>;
}
