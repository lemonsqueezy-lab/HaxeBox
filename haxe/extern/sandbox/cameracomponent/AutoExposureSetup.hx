package sandbox.cameracomponent;

@:native("Sandbox.CameraComponent.AutoExposureSetup")
extern class AutoExposureSetup {
    function new():Void;
    var Enabled(default,default):Bool;
    var Compensation(default,default):Single;
    var MinimumExposure(default,default):Single;
    var MaximumExposure(default,default):Single;
    var Rate(default,default):Single;
}
