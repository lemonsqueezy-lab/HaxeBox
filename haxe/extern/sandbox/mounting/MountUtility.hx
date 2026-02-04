package sandbox.mounting;

@:native("Sandbox.Mounting.MountUtility")
final extern class MountUtility {
    /** Find a ResourceLoader by its mount path. */
    static function FindLoader(loaderPath:String):sandbox.mounting.ResourceLoader<Dynamic>;
    /** Create a preview texture for the given resource loader. */
    static overload function GetPreviewTexture(loaderPath:String):sandbox.Texture;
    static overload function GetPreviewTexture(loader:sandbox.mounting.ResourceLoader<Dynamic>):sandbox.Texture;
}
