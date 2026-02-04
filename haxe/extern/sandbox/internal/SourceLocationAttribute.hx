package sandbox.internal;

/** Automatically added to classes and their members to let them determine their location This helps when looking for resources relative to them, like style sheets. */
@:native("Sandbox.Internal.SourceLocationAttribute")
extern class SourceLocationAttribute {
    function new(path:String, line:Int):Void;
    var Line(default,default):Int;
    var Path(default,default):String;
    var TypeId(default,never):cs.system.Object;
}
