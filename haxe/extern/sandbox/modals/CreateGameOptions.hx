package sandbox.modals;

/** Passed to IModalSystem.CreateGame */
@:native("Sandbox.Modals.CreateGameOptions")
final extern class CreateGameOptions {
    function new(package:sandbox.Package, onComplete:system.Action1<sandbox.modals.CreateGameResults>):Void;
    var Package(default,set):sandbox.Package;

    private inline function set_Package(value:sandbox.Package):sandbox.Package {
        var __value:sandbox.Package = cast value;
        return untyped __cs__("{0}.Package = {1}", this, __value);
    }

    var OnComplete(default,set):system.Action1<sandbox.modals.CreateGameResults>;

    private inline function set_OnComplete(value:system.Action1<sandbox.modals.CreateGameResults>):system.Action1<sandbox.modals.CreateGameResults> {
        var __value:system.Action1<sandbox.modals.CreateGameResults> = cast value;
        return untyped __cs__("{0}.OnComplete = {1}", this, __value);
    }

}
