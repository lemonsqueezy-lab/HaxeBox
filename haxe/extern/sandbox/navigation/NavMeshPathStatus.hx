package sandbox.navigation;

@:native("Sandbox.Navigation.NavMeshPathStatus")
extern enum abstract NavMeshPathStatus(Int) {
    var StartNotFound;
    var TargetNotFound;
    var PathNotFound;
    var Partial;
    var Complete;
}
