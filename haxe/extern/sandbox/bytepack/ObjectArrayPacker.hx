package sandbox.bytepack;

/** An object[] array. More expensive than a Value array because each type has to write its type */
@:native("Sandbox.BytePack.ObjectArrayPacker")
extern class ObjectArrayPacker {
    function new():Void;
    var TargetType(default,never):cs.system.Type;
    function Read(bs:sandbox.ByteStream):cs.system.Object;
    function Write(bs:sandbox.ByteStream, obj:cs.system.Object):Void;
}
