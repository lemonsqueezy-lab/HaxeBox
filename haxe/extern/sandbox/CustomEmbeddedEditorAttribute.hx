package sandbox;

@:native("Sandbox.CustomEmbeddedEditorAttribute")
extern class CustomEmbeddedEditorAttribute {
    function new(targetType:cs.system.Type):Void;
    var TargetType(default,never):cs.system.Type;
    var TypeId(default,never):cs.system.Object;
}
