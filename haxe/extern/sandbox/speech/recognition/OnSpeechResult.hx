package sandbox.speech.recognition;

/** Called when we have a result from speech recognition. */
@:native("Sandbox.Speech.Recognition.OnSpeechResult")
final extern class OnSpeechResult extends system.MulticastDelegate {
    function new(object:cs.system.Object, method:system.IntPtr):Void;
    function BeginInvoke(result:sandbox.speech.SpeechRecognitionResult, callback:system.AsyncCallback, object:cs.system.Object):system.IAsyncResult;
    function EndInvoke(result:system.IAsyncResult):Void;
    function Invoke(result:sandbox.speech.SpeechRecognitionResult):Void;
}
