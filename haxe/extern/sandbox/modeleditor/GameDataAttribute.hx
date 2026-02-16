package sandbox.modeleditor;

/** Indicates that this class/struct should be available as GenericGameData node in ModelDoc */
@:native("Sandbox.ModelEditor.GameDataAttribute")
extern class GameDataAttribute extends sandbox.LibraryAttribute {
    function new(name:String):Void;
    /** Indicates that this type compiles as list, rather than a single entry in the model. This will also affect how you retrieve this data via Model.GetData(). */
    var AllowMultiple(default,default):Bool;
}
