package sandbox.storage;

/** This matches ERemoteStoragePublishedFileVisibility in native */
@:native("Sandbox.Storage.Visibility")
extern enum abstract Visibility(Int) {
    var Public;
    var FriendsOnly;
    var Private;
    var Unlisted;
}
