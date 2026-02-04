package sandbox;

@:native("Sandbox.Hitbox")
extern class Hitbox {
    var GameObject(default,never):sandbox.GameObject;
    var Bone(default,never):sandbox.bonecollection.Bone;
    var Tags(default,never):sandbox.ITagSet;
    var Body(default,default):sandbox.PhysicsBody;
    function Dispose():Void;
}
