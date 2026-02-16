package sandbox.actiongraphs;

/** Reacts to collisions. */
@:native("Sandbox.ActionGraphs.CollisionActionComponent")
extern class CollisionActionComponent extends sandbox.Component {
    function new():Void;
    var CollisionStart(default,default):sandbox.actiongraphs.collisionactioncomponent.CollisionDelegate;
    var CollisionUpdate(default,default):sandbox.actiongraphs.collisionactioncomponent.CollisionDelegate;
    var CollisionStop(default,default):sandbox.actiongraphs.collisionactioncomponent.CollisionStopDelegate;
}
