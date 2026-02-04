package sandbox.actiongraphs;

@:native("Sandbox.ActionGraphs.SceneReferenceTriggeredEvent")
final extern class SceneReferenceTriggeredEvent {
    function new(Source:sandbox.GameObject, Target:sandbox.IValid, Node:facepunch.actiongraphs.Node):Void;
    var Source(default,set):sandbox.GameObject;

    private inline function set_Source(value:sandbox.GameObject):sandbox.GameObject {
        var __value:sandbox.GameObject = cast value;
        return untyped __cs__("{0}.Source = {1}", this, __value);
    }

    var Target(default,set):sandbox.IValid;

    private inline function set_Target(value:sandbox.IValid):sandbox.IValid {
        var __value:sandbox.IValid = cast value;
        return untyped __cs__("{0}.Target = {1}", this, __value);
    }

    var Node(default,set):facepunch.actiongraphs.Node;

    private inline function set_Node(value:facepunch.actiongraphs.Node):facepunch.actiongraphs.Node {
        var __value:facepunch.actiongraphs.Node = cast value;
        return untyped __cs__("{0}.Node = {1}", this, __value);
    }

    function Deconstruct(Source:sandbox.GameObject, Target:sandbox.IValid, Node:facepunch.actiongraphs.Node):Void;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.actiongraphs.SceneReferenceTriggeredEvent):Bool;
    function GetHashCode():Int;
    function ToString():String;
}
