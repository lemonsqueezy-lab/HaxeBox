package sandbox.engine.settings;

/** User graphics settings */
@:native("Sandbox.Engine.Settings.RenderSettings")
extern class RenderSettings {
    var MaxFrameRate(default,default):Int;
    var MaxFrameRateInactive(default,default):Int;
    var DefaultFOV(default,default):Single;
    var TextureQuality(default,default):sandbox.engine.settings.TextureQuality;
    var VolumetricFogQuality(default,default):sandbox.engine.settings.VolumetricFogQuality;
    var PostProcessQuality(default,default):sandbox.engine.settings.PostProcessQuality;
    var MotionBlurScale(default,default):Single;
    var ResolutionWidth(default,default):Int;
    var ResolutionHeight(default,default):Int;
    var Fullscreen(default,default):Bool;
    var Borderless(default,default):Bool;
    var VSync(default,default):Bool;
    var AntiAliasQuality(default,default):sandbox.MultisampleAmount;
    function Apply():Void;
    function DisplayModes(windowed:Bool):Array<sandbox.engine.settings.rendersettings.VideoDisplayMode>;
    function ResetVideoConfig():Void;
}
