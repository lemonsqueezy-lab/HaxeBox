package sandbox;

@:native("Sandbox.CustomEditorAttribute")
extern class CustomEditorAttribute {
    function new(targetType:cs.system.Type):Void;
    var TargetType(default,never):cs.system.Type;
    var WithAllAttributes(default,default):Array<cs.system.Type>;
    var ForMethod(default,default):Bool;
    var NamedEditor(default,default):String;
    var ForInterface(default,default):Bool;
    var TypeId(default,never):cs.system.Object;
    function GetEditorScore(property:sandbox.SerializedProperty):Single;
}
