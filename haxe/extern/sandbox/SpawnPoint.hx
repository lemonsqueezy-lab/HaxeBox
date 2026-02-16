package sandbox;

/** Dictates where players will spawn when they join the game when using a NetworkHelper. */
@:native("Sandbox.SpawnPoint")
final extern class SpawnPoint extends sandbox.Component {
    function new():Void;
    var Color(default,default):Color;
    @:protected function DrawGizmos():Void;
}
