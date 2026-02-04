package sandbox.sceneskybox;

@:native("Sandbox.SceneSkyBox.FogParamInfo")
final extern class FogParamInfo {
    var FogType(default,set):sandbox.sceneskybox.FogType;

    private inline function set_FogType(value:sandbox.sceneskybox.FogType):sandbox.sceneskybox.FogType {
        var __value:sandbox.sceneskybox.FogType = cast value;
        return untyped __cs__("{0}.FogType = {1}", this, __value);
    }

    var FogMinStart(default,set):Single;

    private inline function set_FogMinStart(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.FogMinStart = {1}", this, __value);
    }

    var FogMinEnd(default,set):Single;

    private inline function set_FogMinEnd(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.FogMinEnd = {1}", this, __value);
    }

    var FogMaxStart(default,set):Single;

    private inline function set_FogMaxStart(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.FogMaxStart = {1}", this, __value);
    }

    var FogMaxEnd(default,set):Single;

    private inline function set_FogMaxEnd(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.FogMaxEnd = {1}", this, __value);
    }

}
