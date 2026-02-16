package sandbox;

@:native("Sandbox.IByteParsable`1")
extern class IByteParsable<T> {
    static function Read<T>(stream:sandbox.ByteStream, o:sandbox.ibyteparsable.ByteParseOptions):T;
    static function Write<T>(stream:sandbox.ByteStream, value:T, o:sandbox.ibyteparsable.ByteParseOptions):Void;
}
