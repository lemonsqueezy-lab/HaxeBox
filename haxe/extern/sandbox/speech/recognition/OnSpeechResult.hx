package sandbox.speech.recognition;

/** Called when we have a result from speech recognition. */
@:native("Sandbox.Speech.Recognition.OnSpeechResult")
final extern class OnSpeechResult {
    function new(object:cs.system.Object, method:system.IntPtr):Void;
    var Target(default,never):cs.system.Object;
    var Method(default,never):system.reflection.MethodInfo;
    function BeginInvoke(result:sandbox.speech.SpeechRecognitionResult, callback:system.AsyncCallback, object:cs.system.Object):system.IAsyncResult;
    function EndInvoke(result:system.IAsyncResult):Void;
    function Invoke(result:sandbox.speech.SpeechRecognitionResult):Void;
}
