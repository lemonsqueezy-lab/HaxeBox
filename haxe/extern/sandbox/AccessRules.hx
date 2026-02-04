package sandbox;

@:native("Sandbox.AccessRules")
extern class AccessRules {
    function new():Void;
    var AssemblyWhitelist(default,default):system.collections.generic.List<String>;
    var Whitelist(default,default):system.collections.generic.List<system.text.regularexpressions.Regex>;
    var Blacklist(default,default):system.collections.generic.List<system.text.regularexpressions.Regex>;
    /** Returns true if call is in the whitelist */
    function IsInWhitelist(test:String):Bool;
}
