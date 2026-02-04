package sandbox.gameobject;

@:native("Sandbox.GameObject.SerializeOptions")
extern class SerializeOptions {
    function new():Void;
    /** If we're serializing for network, we won't include any networked objects */
    var SceneForNetwork(default,default):Bool;
    /** We're cloning this object */
    var Cloning(default,default):Bool;
    /** We're going to send a single network object */
    var SingleNetworkObject(default,default):Bool;
}
