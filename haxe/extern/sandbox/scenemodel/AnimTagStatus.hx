package sandbox.scenemodel;

/** Enumeration that describes how the AnimGraph tag state changed. Used in . */
@:native("Sandbox.SceneModel.AnimTagStatus")
extern enum abstract AnimTagStatus(Int) {
    var Fired;
    var Start;
    var End;
}
