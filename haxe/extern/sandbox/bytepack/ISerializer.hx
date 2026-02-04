package sandbox.bytepack;

/** Allows classes to specify how they are to be serialized and deserialized through BytePack. */
@:native("Sandbox.BytePack.ISerializer")
extern class ISerializer {
    static function BytePackRead(bs:sandbox.ByteStream, targetType:cs.system.Type):cs.system.Object;
    static function BytePackWrite(value:cs.system.Object, bs:sandbox.ByteStream):Void;
}
