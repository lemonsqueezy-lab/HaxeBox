package sandbox.engine.bindcollection;

@:native("Sandbox.Engine.BindCollection.BindEntry")
final extern class BindEntry {
    var FullString(default,set):String;

    private inline function set_FullString(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.FullString = {1}", this, __value);
    }

}
