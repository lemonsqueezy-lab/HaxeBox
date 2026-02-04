package sandbox;

@:native("Sandbox.ParticleControlPoint")
final extern class ParticleControlPoint {
    var Value(default,set):sandbox.particlecontrolpoint.ControlPointValueInput;

    private inline function set_Value(value:sandbox.particlecontrolpoint.ControlPointValueInput):sandbox.particlecontrolpoint.ControlPointValueInput {
        var __value:sandbox.particlecontrolpoint.ControlPointValueInput = cast value;
        return untyped __cs__("{0}.Value = {1}", this, __value);
    }

    var StringCP(default,set):String;

    private inline function set_StringCP(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.StringCP = {1}", this, __value);
    }

    var VectorValue(default,set):Vector3;

    private inline function set_VectorValue(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.VectorValue = {1}", this, __value);
    }

    var FloatValue(default,set):Single;

    private inline function set_FloatValue(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.FloatValue = {1}", this, __value);
    }

    var ColorValue(default,set):Color;

    private inline function set_ColorValue(value:Color):Color {
        var __value:Color = cast value;
        return untyped __cs__("{0}.ColorValue = {1}", this, __value);
    }

    var GameObjectValue(default,set):sandbox.GameObject;

    private inline function set_GameObjectValue(value:sandbox.GameObject):sandbox.GameObject {
        var __value:sandbox.GameObject = cast value;
        return untyped __cs__("{0}.GameObjectValue = {1}", this, __value);
    }

    function OutputValue():cs.system.Object;
}
