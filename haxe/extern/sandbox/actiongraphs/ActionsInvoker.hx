package sandbox.actiongraphs;

/** A component which allows you to use action in all the usual functions. */
@:native("Sandbox.ActionGraphs.ActionsInvoker")
final extern class ActionsInvoker extends sandbox.Component {
    function new():Void;
    var OnEnabledAction(default,default):system.Action;
    var OnUpdateAction(default,default):system.Action;
    var OnFixedUpdateAction(default,default):system.Action;
    var OnDisabledAction(default,default):system.Action;
    var OnDestroyAction(default,default):system.Action;
    @:protected function OnDestroy():Void;
    @:protected function OnDisabled():Void;
    @:protected function OnEnabled():Void;
    @:protected function OnFixedUpdate():Void;
    @:protected function OnUpdate():Void;
}
