package sandbox.package;

@:native("Sandbox.Package.IRevision")
extern class IRevision {
    /** Unique index of this revision. */
    var VersionId(default,never):haxe.Int64;
    /** Number of files in this revision. */
    var FileCount(default,never):haxe.Int64;
    /** Total size of all the files in this revision, in bytes. */
    var TotalSize(default,never):haxe.Int64;
    /** A summary of the changes in this revision. */
    var Summary(default,never):String;
    /** When this revision was created. */
    var Created(default,never):system.DateTimeOffset;
    /** Engine version of this revision. TODO: How exactly is this different from ? */
    var EngineVersion(default,never):Int;
    /** Manifest of the revision, describing what files are available. For this to be available you should call DownloadManifestAsync first. */
    var Manifest(default,never):sandbox.ManifestSchema;
    /** The manifest will not be immediately available until you've downloaded it. */
    function DownloadManifestAsync(token:system.threading.CancellationToken):system.threading.tasks.Task;
}
