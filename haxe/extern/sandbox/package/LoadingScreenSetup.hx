package sandbox.package;

@:native("Sandbox.Package.LoadingScreenSetup")
final extern class LoadingScreenSetup {
    /** The URL to an image or video to use as a loading screen. The extension should reveal its type. */
    var MediaUrl(default,set):String;

    private inline function set_MediaUrl(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.MediaUrl = {1}", this, __value);
    }

}
