package sandbox.actiongraphs;

@:native("Sandbox.ActionGraphs.UpdateActionComponent")
extern class UpdateActionComponent extends sandbox.actiongraphs.SimpleActionComponent {
    function new():Void;
    @:protected function OnUpdate():Void;
}
