package sandbox.actiongraphs;

@:native("Sandbox.ActionGraphs.StartActionComponent")
extern class StartActionComponent extends sandbox.actiongraphs.SimpleActionComponent {
    function new():Void;
    @:protected function OnStart():Void;
}
