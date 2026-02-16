package sandbox.actiongraphs;

/** These should not exist */
@:native("Sandbox.ActionGraphs.SimpleActionComponent")
extern class SimpleActionComponent extends sandbox.Component {
    @:protected function new():Void;
    /** ActionGraph to run when the relevant event occurs. */
    var Action(default,default):system.Action;
}
