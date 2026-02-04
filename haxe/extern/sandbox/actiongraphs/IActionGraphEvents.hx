package sandbox.actiongraphs;

@:native("Sandbox.ActionGraphs.IActionGraphEvents")
extern class IActionGraphEvents {
    function SceneReferenceTriggered(ev:sandbox.actiongraphs.SceneReferenceTriggeredEvent):Void;
}
