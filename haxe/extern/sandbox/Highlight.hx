package sandbox;

/** This should be added to a camera that you want to outline stuff */
@:native("Sandbox.Highlight")
final extern class Highlight extends sandbox.BasePostProcess<sandbox.Highlight> {
    function new():Void;
    function Render():Void;
}
