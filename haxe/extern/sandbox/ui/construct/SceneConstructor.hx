package sandbox.ui.construct;

@:native("Sandbox.UI.Construct.SceneConstructor")
final extern class SceneConstructor {
    static function ScenePanel(self:sandbox.ui.construct.PanelCreator, world:sandbox.SceneWorld, position:Vector3, rotation:Rotation, fieldOfView:Single, classname:String):sandbox.ui.ScenePanel;
}
