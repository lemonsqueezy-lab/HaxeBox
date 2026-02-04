package sandbox.modelattachments;

@:native("Sandbox.ModelAttachments.Attachment")
extern class Attachment {
    var Model(default,never):sandbox.Model;
    var Index(default,never):Int;
    var Name(default,never):String;
    var LocalTransform(default,never):Transform;
    var Bone(default,default):sandbox.bonecollection.Bone;
    /** Bone transformed LocalTransform */
    var WorldTransform(default,never):Transform;
    function IsNamed(name:String):Bool;
}
