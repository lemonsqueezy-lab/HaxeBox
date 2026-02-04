package sandbox.indirectlightvolume;

/** Per-probe data including position offset and active state. */
@:native("Sandbox.IndirectLightVolume.Probe")
final extern class Probe {
    function new():Void;
    var Offset(default,default):Vector3;
    var Active(default,default):Bool;
}
