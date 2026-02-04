package sandbox.ui.construct;

@:native("Sandbox.UI.Construct.ImageConstructor")
final extern class ImageConstructor {
    /** Create an image with given texture and CSS classname. */
    static function Image(self:sandbox.ui.construct.PanelCreator, image:String, classname:String):sandbox.ui.Image;
}
