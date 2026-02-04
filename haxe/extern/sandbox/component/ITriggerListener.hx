package sandbox.component;

/** A with this interface can react to interactions with triggers. */
@:native("Sandbox.Component.ITriggerListener")
extern class ITriggerListener {
    /** Called when a collider enters the trigger. */
    overload function OnTriggerEnter(other:sandbox.Collider):Void;
    overload function OnTriggerEnter(other:sandbox.GameObject):Void;
    overload function OnTriggerEnter(self:sandbox.Collider, other:sandbox.Collider):Void;
    overload function OnTriggerEnter(self:sandbox.Collider, other:sandbox.GameObject):Void;
    /** Called when a collider exits the trigger. */
    overload function OnTriggerExit(other:sandbox.Collider):Void;
    overload function OnTriggerExit(other:sandbox.GameObject):Void;
    overload function OnTriggerExit(self:sandbox.Collider, other:sandbox.Collider):Void;
    overload function OnTriggerExit(self:sandbox.Collider, other:sandbox.GameObject):Void;
}
