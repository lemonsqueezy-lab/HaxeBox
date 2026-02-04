package sandbox;

/** When added to a string property, will become a file picker for the given extension (or all by default) */
@:native("Sandbox.FilePathAttribute")
extern class FilePathAttribute {
    function new():Void;
    /** The extension to filter by. If empty, all files are shown. Can be a comma separated list of extensions, or a single extension. */
    var Extension(default,default):String;
    var TypeId(default,never):cs.system.Object;
}
