package sandbox.menuutility;

/** Allows to menu addon to interact with the downloaded file cache */
@:native("Sandbox.MenuUtility.Storage")
final extern class Storage {
    /** Delete all files that haven't been used since x date. */
    static function FlushAsync(beforeDate:system.DateTime):system.threading.tasks.Task;
    /** Get a list of all the local cache files (download/) */
    static function GetStorageFiles():system.collections.generic.IEnumerable<sandbox.menuutility.storage.FileEntry>;
}
