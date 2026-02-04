package sandbox;

@:native("Sandbox.LibraryAttribute")
extern class LibraryAttribute {
    overload function new():Void;
    overload function new(name:String):Void;
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
