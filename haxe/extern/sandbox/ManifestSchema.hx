package sandbox;

/** An addon's manifest, describing what files are available */
@:native("Sandbox.ManifestSchema")
extern class ManifestSchema {
    function new():Void;
    /** For internal use */
    var Schema(default,default):Int;
    /** A list of files that should be mounted to use this asset */
    var Files(default,default):Array<sandbox.manifestschema.File>;
}
