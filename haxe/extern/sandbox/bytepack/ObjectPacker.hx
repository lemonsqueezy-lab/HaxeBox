package sandbox.bytepack;

/** Writes a type header and then the value */
@:native("Sandbox.BytePack.ObjectPacker")
extern class ObjectPacker {
    var TargetType(default,never):cs.system.Type;
    function Read(data:sandbox.ByteStream):cs.system.Object;
    function Write(bs:sandbox.ByteStream, obj:cs.system.Object):Void;
}
