package sandbox.ui.istyleblock;

@:native("Sandbox.UI.IStyleBlock.StyleProperty")
final extern class StyleProperty {
    /** Name of the property, ie "color" or "width" */
    var Name(default,set):String;

    private inline function set_Name(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Name = {1}", this, __value);
    }

    /** Current value of the property (which is being rendered) */
    var Value(default,set):String;

    private inline function set_Value(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Value = {1}", this, __value);
    }

    /** The value that was loaded from the .scss file */
    var OriginalValue(default,set):String;

    private inline function set_OriginalValue(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.OriginalValue = {1}", this, __value);
    }

    /** The line in the file containing this value */
    var Line(default,set):Int;

    private inline function set_Line(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Line = {1}", this, __value);
    }

    /** If parsing this property was successful or failed */
    var IsValid(default,set):Bool;

    private inline function set_IsValid(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.IsValid = {1}", this, __value);
    }

}
