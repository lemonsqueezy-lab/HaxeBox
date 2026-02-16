package sandbox.actiongraphs;

@:native("Sandbox.ActionGraphs.DestroyActionComponent")
extern class DestroyActionComponent extends sandbox.actiongraphs.SimpleActionComponent {
    function new():Void;
    @:protected function OnDestroy():Void;
}
