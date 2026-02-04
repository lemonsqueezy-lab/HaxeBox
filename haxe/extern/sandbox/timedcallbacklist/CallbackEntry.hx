package sandbox.timedcallbacklist;

@:native("Sandbox.TimedCallbackList.CallbackEntry")
extern class CallbackEntry {
    function new(order:Int, action:system.Action, className:String, description:String):Void;
    var Order(default,never):Int;
    var ClassName(default,never):String;
    var Description(default,never):String;
    function CompareTo(other:sandbox.timedcallbacklist.CallbackEntry):Int;
    function Run():Void;
}
