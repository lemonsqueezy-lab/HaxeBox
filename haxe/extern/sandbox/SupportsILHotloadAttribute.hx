package sandbox;

@:native("Sandbox.SupportsILHotloadAttribute")
final extern class SupportsILHotloadAttribute extends system.Attribute {
    function new(previousAssemblyVersion:String):Void;
    var PreviousAssemblyVersion(default,never):String;
}
