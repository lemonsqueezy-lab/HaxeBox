package sandbox;

@:native("Sandbox.CustomEditorAttribute")
extern class CustomEditorAttribute extends system.Attribute {
    function new(targetType:cs.system.Type):Void;
    var TargetType(default,never):cs.system.Type;
    var WithAllAttributes(default,default):Array<cs.system.Type>;
    var ForMethod(default,default):Bool;
    var NamedEditor(default,default):String;
    var ForInterface(default,default):Bool;
    function GetEditorScore(property:sandbox.SerializedProperty):Single;
}
