package sandbox.ui.gradientinfo;

@:native("Sandbox.UI.GradientInfo.RadialSizeMode")
extern enum abstract RadialSizeMode(Int) {
    var FarthestSide;
    var FarthestCorner;
    var ClosestSide;
    var ClosestCorner;
    var Circle;
}
