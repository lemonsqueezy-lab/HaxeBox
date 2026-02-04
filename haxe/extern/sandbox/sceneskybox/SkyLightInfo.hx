package sandbox.sceneskybox;

@:native("Sandbox.SceneSkyBox.SkyLightInfo")
final extern class SkyLightInfo {
    var LightColor(default,set):Vector3;

    private inline function set_LightColor(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.LightColor = {1}", this, __value);
    }

    var LightDirection(default,set):Vector3;

    private inline function set_LightDirection(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.LightDirection = {1}", this, __value);
    }

}
