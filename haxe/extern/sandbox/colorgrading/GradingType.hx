package sandbox.colorgrading;

@:native("Sandbox.ColorGrading.GradingType")
extern enum abstract GradingType(Int) {
    var None;
    var TemperatureControl;
    var LUT;
}
