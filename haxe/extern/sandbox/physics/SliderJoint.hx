package sandbox.physics;

/** A slider constraint, basically allows movement only on the arbitrary axis between the 2 constrained objects on creation. */
@:native("Sandbox.Physics.SliderJoint")
extern class SliderJoint extends sandbox.physics.PhysicsJoint {
    /** Maximum length it should be allowed to go */
    var MaxLength(default,default):Single;
    /** Minimum length it should be allowed to go */
    var MinLength(default,default):Single;
    /** Slider friction. */
    var Friction(never,default):Single;
}
