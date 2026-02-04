package sandbox.network.networksystem;

@:native("Sandbox.Network.NetworkSystem.NetworkMessage")
final extern class NetworkMessage {
    var Source(default,set):sandbox.Connection;

    private inline function set_Source(value:sandbox.Connection):sandbox.Connection {
        var __value:sandbox.Connection = cast value;
        return untyped __cs__("{0}.Source = {1}", this, __value);
    }

    var Data(default,set):sandbox.ByteStream;

    private inline function set_Data(value:sandbox.ByteStream):sandbox.ByteStream {
        var __value:sandbox.ByteStream = cast value;
        return untyped __cs__("{0}.Data = {1}", this, __value);
    }

}
