package sandbox.particle;

/** Allows creating a class that will exist for as long as a particle. The methods get called in the particle thread, which removes the need to run through the particle list again, but it has the danger and restrictions that come with threaded code. */
@:native("Sandbox.Particle.BaseListener")
extern class BaseListener {
    /** The component that created this listener. May be null. */
    var Source(default,never):sandbox.Component;
    /** Called in a thread. OnUpdate won't be called again. */
    function OnDisabled(p:sandbox.Particle):Void;
    /** Called in a thread. The particle is in its first position. */
    function OnEnabled(p:sandbox.Particle):Void;
    /** Called in a thread, guarenteed to be called after OnEnabled */
    function OnUpdate(p:sandbox.Particle, dt:Single):Void;
}
