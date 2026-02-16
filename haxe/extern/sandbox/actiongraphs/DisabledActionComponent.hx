package sandbox.actiongraphs;

@:native("Sandbox.ActionGraphs.DisabledActionComponent")
extern class DisabledActionComponent extends sandbox.actiongraphs.SimpleActionComponent {
    function new():Void;
    @:protected function OnDisabled():Void;
}
