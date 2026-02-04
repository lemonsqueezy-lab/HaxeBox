package sandbox;

/** A world in which physics objects exist. You can create your own world but you really don't need to. A world for the map is created clientside and serverside automatically. */
@:native("Sandbox.PhysicsWorld")
final extern class PhysicsWorld {
    /** Create a new physics world. You should only do this if you want to simulate an extra world for some reason. */
    function new():Void;
    /** All bodies in the world */
    var Bodies(default,never):system.collections.generic.IEnumerable<sandbox.PhysicsBody>;
    /** Set or retrieve the collision rules for this . */
    var CollisionRules(default,default):sandbox.physics.CollisionRules;
    /** Access the world's current gravity. */
    var Gravity(default,default):Vector3;
    /** Air density of this physics world, for things like air drag. */
    var AirDensity(default,default):Single;
    /** The body of this physics world. */
    var Body(default,never):sandbox.PhysicsBody;
    /** The physics group of this physics world. A physics world will contain only 1 body. */
    var Group(default,never):sandbox.PhysicsGroup;
    /** If true then bodies will be able to sleep after a period of inactivity */
    var SleepingEnabled(default,default):Bool;
    /** Physics simulation mode. See for explanation of each mode. */
    var SimulationMode(default,default):sandbox.PhysicsSimulationMode;
    var PositionIterations(default,default):Int;
    var VelocityIterations(default,default):Int;
    /** If you're seeing objects go through other objects or you have a low tickrate, you might want to increase the number of physics substeps. This breaks physics steps down into this many substeps. The default is 1 and works pretty good. Be aware that the number of physics ticks per second is going to be tickrate * substeps. So if you're ticking at 90 and you have SubSteps set to 1000 then you're going to do 90,000 steps per second. So be careful here. */
    var SubSteps(default,default):Int;
    var TimeScale(default,default):Single;
    /** Raytrace against this world */
    var Trace(default,never):sandbox.PhysicsTraceBuilder;
    /** A SceneWorld where debug SceneObjects exist. */
    var DebugSceneWorld(default,default):sandbox.SceneWorld;
    /** Updates all the SceneObjects in the , call once per tick or frame. */
    function DebugDraw():Void;
    /** Delete this world and all objects inside. Will throw an exception if you try to delete a world that you didn't manually create. */
    function Delete():Void;
    /** Gets the specific collision rule for a pair of tags. */
    function GetCollisionRule(left:String, right:String):sandbox.physics.collisionrules.Result;
    function RunTrace(trace:sandbox.PhysicsTraceBuilder):sandbox.PhysicsTraceResult;
    function RunTraceAll(trace:sandbox.PhysicsTraceBuilder):Array<sandbox.PhysicsTraceResult>;
    /** Used internally to set collision rules from gamemode's project settings. You shouldn't need to call this yourself. */
    function SetCollisionRules(rules:sandbox.physics.CollisionRules):Void;
    /** Temp function for creating model physics until entity system handles it */
    overload function SetupPhysicsFromModel(model:sandbox.Model, motionType:sandbox.PhysicsMotionType):sandbox.PhysicsGroup;
    overload function SetupPhysicsFromModel(model:sandbox.Model, transform:Transform, motionType:sandbox.PhysicsMotionType):sandbox.PhysicsGroup;
    /** Step simulation of this physics world. You can only do this on physics worlds that you manually create. */
    overload function Step(delta:Single):Void;
    overload function Step(delta:Single, subSteps:Int):Void;
    overload function Step(worldTime:Single, delta:Single, subSteps:Int):Void;
}
