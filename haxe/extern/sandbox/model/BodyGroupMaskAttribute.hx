package sandbox.model;

/** Used to mark properties as a body group mask, so the correct editor can be used */
@:native("Sandbox.Model.BodyGroupMaskAttribute")
final extern class BodyGroupMaskAttribute extends system.Attribute {
    function new():Void;
    var ModelParameter(default,default):String;
}
