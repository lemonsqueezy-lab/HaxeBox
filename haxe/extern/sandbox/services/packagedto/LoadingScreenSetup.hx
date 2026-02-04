package sandbox.services.packagedto;

@:native("Sandbox.Services.PackageDto.LoadingScreenSetup")
final extern class LoadingScreenSetup {
    var MediaUrl(default,set):String;

    private inline function set_MediaUrl(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.MediaUrl = {1}", this, __value);
    }

}
