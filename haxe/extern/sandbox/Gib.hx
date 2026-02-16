package sandbox;

/** A gib is a prop that is treated slightly different. It will fade out after a certain amount of time. */
@:native("Sandbox.Gib")
extern class Gib extends sandbox.Prop {
    function new():Void;
    var FadeTime(default,default):Single;
    @:protected function OnEnabled():Void;
}
