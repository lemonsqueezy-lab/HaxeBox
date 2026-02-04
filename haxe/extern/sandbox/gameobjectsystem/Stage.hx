package sandbox.gameobjectsystem;

/** A list of stages in the scene tick in which we can hook */
@:native("Sandbox.GameObjectSystem.Stage")
extern enum abstract Stage(Int) {
    var StartUpdate;
    var UpdateBones;
    var PhysicsStep;
    var Interpolation;
    var FinishUpdate;
    var StartFixedUpdate;
    var FinishFixedUpdate;
    var SceneLoaded;
}
