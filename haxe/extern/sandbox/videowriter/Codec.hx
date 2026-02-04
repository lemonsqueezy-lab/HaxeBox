package sandbox.videowriter;

@:native("Sandbox.VideoWriter.Codec")
extern enum abstract Codec(Int) {
    var H264;
    var H265;
    var VP8;
    var VP9;
    var WebP;
}
