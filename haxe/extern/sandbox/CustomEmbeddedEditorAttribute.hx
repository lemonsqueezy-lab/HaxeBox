package sandbox;

@:native("Sandbox.CustomEmbeddedEditorAttribute")
extern class CustomEmbeddedEditorAttribute extends system.Attribute {
    function new(targetType:cs.system.Type):Void;
    var TargetType(default,never):cs.system.Type;
}
