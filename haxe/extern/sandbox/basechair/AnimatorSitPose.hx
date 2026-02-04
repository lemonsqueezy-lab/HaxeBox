package sandbox.basechair;

@:native("Sandbox.BaseChair.AnimatorSitPose")
extern enum abstract AnimatorSitPose(Int) {
    var Standing;
    var Chair;
    var ChairForward;
    var ChairCrossed;
    var KneelingOpen;
    var Kneeling;
    var Ground;
    var GroundCrossed;
}
