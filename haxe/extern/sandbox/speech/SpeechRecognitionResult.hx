package sandbox.speech;

/** A result from speech recognition. */
@:native("Sandbox.Speech.SpeechRecognitionResult")
final extern class SpeechRecognitionResult {
    /** From 0-1 how confident are we that this is the correct result? */
    var Confidence(default,set):Single;

    private inline function set_Confidence(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.Confidence = {1}", this, __value);
    }

    /** The text result from speech recognition. */
    var Text(default,set):String;

    private inline function set_Text(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Text = {1}", this, __value);
    }

    /** Did we successfully find a match? */
    var Success(default,set):Bool;

    private inline function set_Success(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.Success = {1}", this, __value);
    }

}
