package sandbox;

/** Default model archetypes. These types are defined in "tools/model_archetypes.txt". */
@:native("Sandbox.ModelArchetype")
extern enum abstract ModelArchetype(Int) {
    var static_prop_model;
    var animated_model;
    var physics_prop_model;
    var jointed_physics_model;
    var breakable_prop_model;
    var generic_actor_model;
}
