package sandbox;

@:native("Sandbox.ResourceExtension`2")
extern class ResourceExtension<T,TSelf> {
    function new():Void;
    static function FindAllForResource<TSelf>(r:sandbox.Resource):system.collections.generic.IEnumerable<TSelf>;
    static function FindDefault<TSelf>():TSelf;
    static function FindForResource<TSelf>(r:sandbox.Resource):TSelf;
    static function FindForResourceOrDefault<TSelf>(r:sandbox.Resource):TSelf;
}
