package sandbox;

@:native("Sandbox.ModelAttachments")
extern class ModelAttachments {
    function new(model:sandbox.Model):Void;
    var Model(default,never):sandbox.Model;
    var All(default,never):system.collections.generic.IReadOnlyList<sandbox.modelattachments.Attachment>;
    var Count(default,never):Int;
    function Get(name:String):sandbox.modelattachments.Attachment;
    function GetTransform(name:String):Null<Transform>;
}
