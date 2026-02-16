package sandbox.actiongraphs;

@:native("Sandbox.ActionGraphs.AwakeActionComponent")
extern class AwakeActionComponent extends sandbox.actiongraphs.SimpleActionComponent {
    function new():Void;
    @:protected function OnAwake():Void;
}
