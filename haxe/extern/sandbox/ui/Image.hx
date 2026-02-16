package sandbox.ui;

/** A generic box that displays a given texture within itself. */
@:native("Sandbox.UI.Image")
extern class Image extends sandbox.ui.Panel {
    function new():Void;
    /** The texture being displayed by this panel. */
    var Texture(default,default):sandbox.Texture;
    function SetProperty(name:String, value:String):Void;
    /** Set from a file path. URLs supported. */
    function SetTexture(name:String):Void;
}
