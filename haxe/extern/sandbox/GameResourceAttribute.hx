package sandbox;

@:native("Sandbox.GameResourceAttribute")
extern class GameResourceAttribute extends sandbox.AssetTypeAttribute {
    function new(title:String, extension:String, description:String):Void;
    /** Icon to be used for this asset Can be an absolute path of a PNG Or a material icon for this game resource's thumbnail. */
    var Icon(default,default):String;
    /** Background color for this resource's thumbnail. */
    var IconBgColor(default,default):String;
    /** Foreground color (icon color) for this resource's thumbnail. */
    var IconFgColor(default,default):String;
    /** Can this GameResource be an embedded resource? Allows the ability to edit a resource inline instead of saving it to a specific file. */
    var CanEmbed(default,default):Bool;
    /** Description of this game resource. This is obsolete, we'll use the xml summary description. */
    var Description(default,default):String;
}
