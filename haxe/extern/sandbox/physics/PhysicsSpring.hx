package sandbox.physics;

/** Spring related settings for joints such as . */
@:native("Sandbox.Physics.PhysicsSpring")
final extern class PhysicsSpring {
    function new(frequency:Single, damping:Single, maximum:Single):Void;
    /** The stiffness of the spring */
    var Frequency(default,set):Single;

    private inline function set_Frequency(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.Frequency = {1}", this, __value);
    }

    /** The damping ratio of the spring, usually between 0 and 1 */
    var Damping(default,set):Single;

    private inline function set_Damping(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.Damping = {1}", this, __value);
    }

    /** For weld joints only, maximum force. Not for breaking. */
    var Maximum(default,set):Single;

    private inline function set_Maximum(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.Maximum = {1}", this, __value);
    }

    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.physics.PhysicsSpring):Bool;
    function GetHashCode():Int;
    function ToString():String;
}
