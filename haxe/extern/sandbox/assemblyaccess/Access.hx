package sandbox.assemblyaccess;

@:native("Sandbox.AssemblyAccess.Access")
extern class Access {
    function new():Void;
    var Name(default,default):String;
    var Type(default,default):String;
    var Count(default,default):Int;
    var Locations(default,default):system.collections.generic.List<sandbox.accesscontrol.CodeLocation>;
}
