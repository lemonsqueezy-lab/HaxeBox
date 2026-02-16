package sandbox.bytepack;

/** An object[] array. More expensive than a Value array because each type has to write its type */
@:native("Sandbox.BytePack.ObjectArrayPacker")
extern class ObjectArrayPacker extends sandbox.bytepack.Packer {
    function new():Void;
    function Read(bs:sandbox.ByteStream):cs.system.Object;
    function Write(bs:sandbox.ByteStream, obj:cs.system.Object):Void;
}
