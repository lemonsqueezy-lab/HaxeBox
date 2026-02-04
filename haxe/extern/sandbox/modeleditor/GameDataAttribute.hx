package sandbox.modeleditor;

/** Indicates that this class/struct should be available as GenericGameData node in ModelDoc */
@:native("Sandbox.ModelEditor.GameDataAttribute")
extern class GameDataAttribute {
    function new(name:String):Void;
    /** Indicates that this type compiles as list, rather than a single entry in the model. This will also affect how you retrieve this data via Model.GetData(). */
    var AllowMultiple(default,default):Bool;
    /** This is the name that will be used to create this class. If you don't set it via the attribute constructor it will be set to the name of the class it's attached to */
    var Name(default,never):String;
    /** The full class name */
    var FullName(default,never):String;
    /** A nice presentable name to show */
    var Title(default,default):String;
    /** We use this to provide a nice description in the editor */
    var Description(default,default):String;
    /** We use this to organize groups of entities in the editor */
    var Group(default,default):String;
    /** We use this to filter entities to show in the entity list in the editor */
    var Editable(default,default):Bool;
    var TypeId(default,never):cs.system.Object;
}
