package sandbox.modelphysics;

/** Represents a between two bodies with local frames for each. */
@:native("Sandbox.ModelPhysics.Joint")
final extern class Joint {
    /** Represents a between two bodies with local frames for each. */
    function new(Component:sandbox.Joint, Body1:sandbox.modelphysics.Body, Body2:sandbox.modelphysics.Body, LocalFrame1:Transform, LocalFrame2:Transform):Void;
    var Component(default,set):sandbox.Joint;

    private inline function set_Component(value:sandbox.Joint):sandbox.Joint {
        var __value:sandbox.Joint = cast value;
        return untyped __cs__("{0}.Component = {1}", this, __value);
    }

    var Body1(default,set):sandbox.modelphysics.Body;

    private inline function set_Body1(value:sandbox.modelphysics.Body):sandbox.modelphysics.Body {
        var __value:sandbox.modelphysics.Body = cast value;
        return untyped __cs__("{0}.Body1 = {1}", this, __value);
    }

    var Body2(default,set):sandbox.modelphysics.Body;

    private inline function set_Body2(value:sandbox.modelphysics.Body):sandbox.modelphysics.Body {
        var __value:sandbox.modelphysics.Body = cast value;
        return untyped __cs__("{0}.Body2 = {1}", this, __value);
    }

    var LocalFrame1(default,set):Transform;

    private inline function set_LocalFrame1(value:Transform):Transform {
        var __value:Transform = cast value;
        return untyped __cs__("{0}.LocalFrame1 = {1}", this, __value);
    }

    var LocalFrame2(default,set):Transform;

    private inline function set_LocalFrame2(value:Transform):Transform {
        var __value:Transform = cast value;
        return untyped __cs__("{0}.LocalFrame2 = {1}", this, __value);
    }

    function Deconstruct(Component:sandbox.Joint, Body1:sandbox.modelphysics.Body, Body2:sandbox.modelphysics.Body, LocalFrame1:Transform, LocalFrame2:Transform):Void;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.modelphysics.Joint):Bool;
    function GetHashCode():Int;
    function ToString():String;
}
