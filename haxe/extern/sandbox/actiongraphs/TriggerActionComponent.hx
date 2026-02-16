package sandbox.actiongraphs;

/** Reacts to collider triggers. */
@:native("Sandbox.ActionGraphs.TriggerActionComponent")
extern class TriggerActionComponent extends sandbox.Component {
    function new():Void;
    var TriggerEnter(default,default):sandbox.actiongraphs.triggeractioncomponent.TriggerDelegate;
    var TriggerExit(default,default):sandbox.actiongraphs.triggeractioncomponent.TriggerDelegate;
}
