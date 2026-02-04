package sandbox.engine.settings;

/** Controls the quality level of post processing effects such as: ambient occlusion, depth of field, motion blur and more */
@:native("Sandbox.Engine.Settings.PostProcessQuality")
extern enum abstract PostProcessQuality(Int) {
    var Low;
    var Medium;
    var High;
}
