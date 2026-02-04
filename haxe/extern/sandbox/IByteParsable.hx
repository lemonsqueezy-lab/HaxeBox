package sandbox;

@:native("Sandbox.IByteParsable`1")
extern class IByteParsable<T> {
    static function Read(stream:sandbox.ByteStream, o:sandbox.ibyteparsable.ByteParseOptions):T;
    static function Write(stream:sandbox.ByteStream, value:T, o:sandbox.ibyteparsable.ByteParseOptions):Void;
}
