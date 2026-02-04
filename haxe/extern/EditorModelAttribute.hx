package;

/** Declare a model to represent this entity in editor. This is a common attribute so it's leaked out of the Editor namespace. */
@:native("EditorModelAttribute")
extern class EditorModelAttribute {
    function new(model:String, staticColor:String, dynamicColor:String):Void;
    /** The model to display in the editor. */
    var Model(default,default):String;
    /** Whether the model should cast shadows in the editor. */
    var CastShadows(default,default):Bool;
    /** Don't reorient bounds. This is used for things that have fixed bounds in the game, like info_player_start. */
    var FixedBounds(default,default):Bool;
    /** Tint color for this editor model instance when the entity it represents is static. */
    var StaticColor(default,default):Color;
    /** Tint color for this editor model instance when the entity it represents is dynamic. */
    var DynamicColor(default,default):Color;
    var TypeId(default,never):cs.system.Object;
}
