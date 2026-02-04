package sandbox.rendering.commandlist;

/** Command buffer flags allow us to skip command buffers if the camera doesn't want a particular thing. Like post processing. */
@:native("Sandbox.Rendering.CommandList.Flag")
extern enum abstract Flag(Int) {
    var None;
    var PostProcess;
    var Hud;
}
