package sandbox.ui;

/** Describes transition of a single CSS property, a.k.a. the values of a transition CSS property. Utility to create a transition by comparing the panel style before and after the scope. */
@:native("Sandbox.UI.TransitionDesc")
final extern class TransitionDesc {
    var Property(default,set):String;

    private inline function set_Property(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Property = {1}", this, __value);
    }

    var Duration(default,set):Null<Single>;

    private inline function set_Duration(value:Null<Single>):Null<Single> {
        var __value:Null<Single> = cast value;
        return untyped __cs__("{0}.Duration = {1}", this, __value);
    }

    var Delay(default,set):Null<Single>;

    private inline function set_Delay(value:Null<Single>):Null<Single> {
        var __value:Null<Single> = cast value;
        return untyped __cs__("{0}.Delay = {1}", this, __value);
    }

    var TimingFunction(default,set):String;

    private inline function set_TimingFunction(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.TimingFunction = {1}", this, __value);
    }

}
