package sandbox.ui.textentry;

@:native("Sandbox.UI.TextEntry.AutocompleteEntry")
final extern class AutocompleteEntry {
    var Title(default,set):String;

    private inline function set_Title(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Title = {1}", this, __value);
    }

    var Icon(default,set):String;

    private inline function set_Icon(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Icon = {1}", this, __value);
    }

    var Value(default,set):cs.system.Object;

    private inline function set_Value(value:cs.system.Object):cs.system.Object {
        var __value:cs.system.Object = cast value;
        return untyped __cs__("{0}.Value = {1}", this, __value);
    }

}
