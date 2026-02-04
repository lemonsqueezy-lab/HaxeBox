package sandbox.modeleditor.internal;

@:native("Sandbox.ModelEditor.Internal.BaseModelDocAttribute")
extern class BaseModelDocAttribute {
    function new(name:String):Void;
    var TypeId(default,never):cs.system.Object;
    function AddHelpers(helpers:system.collections.generic.List<system.Tuple<String,Array<String>>>):Void;
    /** Add generic key-values to the helper. */
    @:protected function AddKeys(dict:system.collections.generic.Dictionary<String,cs.system.Object>):Void;
    /** Internal, used to add multi level key-values. */
    @:protected function AddTransform(sb:system.text.StringBuilder):Void;
}
