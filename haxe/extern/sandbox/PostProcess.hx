package sandbox;

/** Adds an effect to the camera */
@:native("Sandbox.PostProcess")
extern class PostProcess extends sandbox.Component {
    @:protected function new():Void;
    var Camera(default,default):sandbox.CameraComponent;
    /** The stage in the render pipeline that we'll get rendered in */
    @:protected
    var RenderStage(null,never):sandbox.rendering.Stage;
    /** Lower numbers get renderered first */
    @:protected
    var RenderOrder(null,never):Int;
    @:protected
    var CommandList(null,never):sandbox.rendering.CommandList;
    @:protected function OnDisabled():Void;
    @:protected function OnEnabled():Void;
    @:protected function OnUpdate():Void;
    /** You should implement this method and fill the CommandList with the actions that you want to do for this post process. */
    @:protected function UpdateCommandList():Void;
}
