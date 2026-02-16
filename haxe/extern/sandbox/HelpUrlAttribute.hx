package sandbox;

/** Add a link to some documentation for this component, or */
@:native("Sandbox.HelpUrlAttribute")
final extern class HelpUrlAttribute extends system.Attribute {
    function new(url:String):Void;
    var Url(default,default):String;
}
