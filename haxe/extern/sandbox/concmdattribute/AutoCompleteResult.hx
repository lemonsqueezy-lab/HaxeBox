package sandbox.concmdattribute;

@:native("Sandbox.ConCmdAttribute.AutoCompleteResult")
final extern class AutoCompleteResult {
    var Command(default,set):String;

    private inline function set_Command(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Command = {1}", this, __value);
    }

    var Description(default,set):String;

    private inline function set_Description(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Description = {1}", this, __value);
    }

    var Location(default,set):String;

    private inline function set_Location(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Location = {1}", this, __value);
    }

}
