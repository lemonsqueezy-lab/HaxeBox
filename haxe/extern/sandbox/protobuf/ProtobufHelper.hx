package sandbox.protobuf;

@:native("Sandbox.Protobuf.ProtobufHelper")
final extern class ProtobufHelper {
    static function From<T>(stream:system.io.Stream):T;
    static function FromWire(stream:system.io.Stream):cs.system.Object;
    static function GetBytes<T>(obj:T):Array<Int>;
    static function ToStream<T>(obj:T, stream:system.io.Stream):Void;
    static function ToWire<T>(msg:T, stream:system.io.Stream):Void;
}
