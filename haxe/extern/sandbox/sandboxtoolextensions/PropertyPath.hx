package sandbox.sandboxtoolextensions;

/** Describes the path to a from either a or . */
@:native("Sandbox.SandboxToolExtensions.PropertyPath")
final extern class PropertyPath {
    /** Full path to reach the original property, starting from a property on a or . */
    var Properties(default,never):system.collections.generic.IReadOnlyList<sandbox.SerializedProperty>;
    /** Names of each property in , separated by '.'s. */
    var FullName(default,never):String;
    /** (s) or (s) that contain the original property. */
    var Targets(default,never):system.collections.generic.IEnumerable<cs.system.Object>;
    /** Returns . */
    function ToString():String;
}
