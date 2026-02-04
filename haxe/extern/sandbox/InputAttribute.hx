package sandbox;

/** Makes this method available as a Map Logic Input, for use in the Hammer Editor. This is only applicable to entities. */
@:native("Sandbox.InputAttribute")
extern class InputAttribute {
    overload function new():Void;
    overload function new(name:String):Void;
    /** Desired name of this input. If not set, the method's name will be used. */
    var Name(default,default):String;
    var TypeId(default,never):cs.system.Object;
}
