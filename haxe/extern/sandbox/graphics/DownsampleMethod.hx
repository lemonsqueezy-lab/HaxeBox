package sandbox.graphics;

/** Which method to use when downsampling a texture */
@:native("Sandbox.Graphics.DownsampleMethod")
extern enum abstract DownsampleMethod(Int) {
    var Box;
    var GaussianBlur;
    var GaussianBorder;
    var Max;
    var Min;
    var MinMax;
    var Default;
    var None;
}
