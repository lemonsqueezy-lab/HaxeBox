package sandbox.actiongraphs;

@:native("Sandbox.ActionGraphs.GameObjectThumbnail")
final extern class GameObjectThumbnail {
    static final Size:Int;
    static function GetGameObjectThumb(go:sandbox.GameObject):editor.Pixmap;
}
