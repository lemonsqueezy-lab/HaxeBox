package sandbox.actiongraphs;

@:native("Sandbox.ActionGraphs.FixedUpdateActionComponent")
extern class FixedUpdateActionComponent extends sandbox.actiongraphs.SimpleActionComponent {
    function new():Void;
    @:protected function OnFixedUpdate():Void;
}
