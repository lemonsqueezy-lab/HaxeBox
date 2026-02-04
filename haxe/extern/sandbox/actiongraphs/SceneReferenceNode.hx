package sandbox.actiongraphs;

/** An from an that references a or . */
@:native("Sandbox.ActionGraphs.SceneReferenceNode")
final extern class SceneReferenceNode {
    /** An from an that references a or . */
    function new(Node:facepunch.actiongraphs.Node, TargetObject:sandbox.GameObject, TargetComponent:sandbox.Component):Void;
    var Node(default,set):facepunch.actiongraphs.Node;

    private inline function set_Node(value:facepunch.actiongraphs.Node):facepunch.actiongraphs.Node {
        var __value:facepunch.actiongraphs.Node = cast value;
        return untyped __cs__("{0}.Node = {1}", this, __value);
    }

    var TargetObject(default,set):sandbox.GameObject;

    private inline function set_TargetObject(value:sandbox.GameObject):sandbox.GameObject {
        var __value:sandbox.GameObject = cast value;
        return untyped __cs__("{0}.TargetObject = {1}", this, __value);
    }

    var TargetComponent(default,set):sandbox.Component;

    private inline function set_TargetComponent(value:sandbox.Component):sandbox.Component {
        var __value:sandbox.Component = cast value;
        return untyped __cs__("{0}.TargetComponent = {1}", this, __value);
    }

    function Deconstruct(Node:facepunch.actiongraphs.Node, TargetObject:sandbox.GameObject, TargetComponent:sandbox.Component):Void;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.actiongraphs.SceneReferenceNode):Bool;
    function GetHashCode():Int;
    function ToString():String;
}
