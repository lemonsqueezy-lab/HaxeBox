package sandbox.actiongraphs;

@:native("Sandbox.ActionGraphs.ActionGraphExtensions")
final extern class ActionGraphExtensions {
    static overload function AreParametersActionGraphSafe(methodDesc:sandbox.MethodDescription):Bool;
    static overload function AreParametersActionGraphSafe(methodBase:system.reflection.MethodBase):Bool;
    static overload function CanActionGraphRead(field:sandbox.FieldDescription, nodeLibrary:facepunch.actiongraphs.NodeLibrary):Bool;
    static overload function CanActionGraphRead(property:sandbox.PropertyDescription, nodeLibrary:facepunch.actiongraphs.NodeLibrary):Bool;
    static overload function CanActionGraphWrite(field:sandbox.FieldDescription, nodeLibrary:facepunch.actiongraphs.NodeLibrary):Bool;
    static overload function CanActionGraphWrite(property:sandbox.PropertyDescription, nodeLibrary:facepunch.actiongraphs.NodeLibrary):Bool;
    static overload function GetEmbeddedTarget(actionGraph:facepunch.actiongraphs.ActionGraph):cs.system.Object;
    static overload function GetEmbeddedTarget(actionGraph:facepunch.actiongraphs.IActionGraphDelegate):cs.system.Object;
    /** Gets all component types referenced using "scene.get" nodes. These components are expected to be on the GameObject containing the graph. */
    static function GetReferencedComponentTypes(graph:facepunch.actiongraphs.ActionGraph):system.collections.generic.IReadOnlyCollection<cs.system.Type>;
    static overload function GetTargetType(actionGraph:facepunch.actiongraphs.ActionGraph):cs.system.Type;
    static overload function GetTargetType(actionGraph:facepunch.actiongraphs.IActionGraphDelegate):cs.system.Type;
    static overload function IsActionGraphIgnored(memberDesc:sandbox.MemberDescription):Bool;
    static overload function IsActionGraphIgnored(typeDesc:sandbox.TypeDescription):Bool;
    static function IsPure(methodDesc:sandbox.MethodDescription, nodeLibrary:facepunch.actiongraphs.NodeLibrary):Bool;
    static function UpdateReferences(graph:facepunch.actiongraphs.ActionGraph):Void;
}
