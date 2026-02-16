package sandbox.actiongraphs;

@:native("Sandbox.ActionGraphs.EnabledActionComponent")
extern class EnabledActionComponent extends sandbox.actiongraphs.SimpleActionComponent {
    function new():Void;
    @:protected function OnEnabled():Void;
}
