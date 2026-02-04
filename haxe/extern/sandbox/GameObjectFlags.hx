package sandbox;

@:native("Sandbox.GameObjectFlags")
extern enum abstract GameObjectFlags(Int) {
    var None;
    var Hidden;
    var NotSaved;
    var Bone;
    var Attachment;
    var Error;
    var Loading;
    var Deserializing;
    var DontDestroyOnLoad;
    var NotNetworked;
    var Refreshing;
    var ProceduralBone;
    var EditorOnly;
    var Absolute;
    var PhysicsBone;
    var NoInterpolation;
}
