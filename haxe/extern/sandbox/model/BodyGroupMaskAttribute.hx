package sandbox.model;

/** Used to mark properties as a body group mask, so the correct editor can be used */
@:native("Sandbox.Model.BodyGroupMaskAttribute")
final extern class BodyGroupMaskAttribute {
    function new():Void;
    var ModelParameter(default,default):String;
    var TypeId(default,never):cs.system.Object;
}
