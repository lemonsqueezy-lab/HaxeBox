package sandbox.debug;

@:native("Sandbox.Debug.Networking")
final extern class Networking {
    /** Add an empty connection for debugging purposes. This connection cannot receive or send data and it won't be visible to other clients. */
    static function AddEmptyConnection():Void;
}
