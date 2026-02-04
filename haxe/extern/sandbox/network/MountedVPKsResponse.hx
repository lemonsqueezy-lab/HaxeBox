package sandbox.network;

@:native("Sandbox.Network.MountedVPKsResponse")
final extern class MountedVPKsResponse {
    var MountedVPKs(default,set):system.collections.generic.List<String>;

    private inline function set_MountedVPKs(value:system.collections.generic.List<String>):system.collections.generic.List<String> {
        var __value:system.collections.generic.List<String> = cast value;
        return untyped __cs__("{0}.MountedVPKs = {1}", this, __value);
    }

    var HandshakeId(default,set):system.Guid;

    private inline function set_HandshakeId(value:system.Guid):system.Guid {
        var __value:system.Guid = cast value;
        return untyped __cs__("{0}.HandshakeId = {1}", this, __value);
    }

}
