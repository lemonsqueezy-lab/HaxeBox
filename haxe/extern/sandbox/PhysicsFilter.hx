package sandbox;

@:native("Sandbox.PhysicsFilter")
final extern class PhysicsFilter extends sandbox.Component {
    function new():Void;
    /** The other body to ignore collisions with. */
    var Body(default,default):sandbox.GameObject;
    @:protected function OnDestroy():Void;
    @:protected function OnDisabled():Void;
    @:protected function OnEnabled():Void;
}
