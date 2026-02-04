package sandbox;

/** Sets the category or the group of a type or a type member. This info can then be retrieved via DisplayInfo library. */
@:native("Sandbox.FeatureAttribute")
extern class FeatureAttribute {
    function new(value:String):Void;
    /** How we will group features together */
    var Identifier(default,default):String;
    /** Title of the feature. Keep it short please! */
    var Title(default,default):String;
    /** The description of the feature */
    var Description(default,default):String;
    /** Icon to show next to the feature */
    var Icon(default,default):String;
    /** The color of the feature button. Helps group things, helps things to stand out. Defaults to white. */
    var Tint(default,default):sandbox.EditorTint;
    var TypeId(default,never):cs.system.Object;
}
