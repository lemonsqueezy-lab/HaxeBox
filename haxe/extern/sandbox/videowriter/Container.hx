package sandbox.videowriter;

@:native("Sandbox.VideoWriter.Container")
extern enum abstract Container(Int) {
    var MP4;
    var WebM;
    var WebP;
}
