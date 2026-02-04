package sandbox.prefabscene;

/** A collection of variabnles that have been configured for this scene */
@:native("Sandbox.PrefabScene.VariableCollection")
extern class VariableCollection {
    function new():Void;
    function ClearVariable(property:sandbox.SerializedProperty):Void;
    function Create(name:String):sandbox.PrefabVariable;
    static function DeconstructKey(property:String):system.ValueTuple3<system.Guid,system.Guid,String>;
    function GetEnumerator():system.collections.generic.IEnumerator<sandbox.PrefabVariable>;
    function IsVariable(property:sandbox.SerializedProperty):Bool;
    function Remove(variable:sandbox.PrefabVariable):Void;
}
