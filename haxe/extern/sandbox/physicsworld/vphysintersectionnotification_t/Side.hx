package sandbox.physicsworld.vphysintersectionnotification_t;

@:native("Sandbox.PhysicsWorld.VPhysIntersectionNotification_t.Side")
final extern class Side {
    var Shape(default,set):nativeengine.IPhysicsShape;

    private inline function set_Shape(value:nativeengine.IPhysicsShape):nativeengine.IPhysicsShape {
        var __value:nativeengine.IPhysicsShape = cast value;
        return untyped __cs__("{0}.Shape = {1}", this, __value);
    }

    var Body(default,set):nativeengine.IPhysicsBody;

    private inline function set_Body(value:nativeengine.IPhysicsBody):nativeengine.IPhysicsBody {
        var __value:nativeengine.IPhysicsBody = cast value;
        return untyped __cs__("{0}.Body = {1}", this, __value);
    }

    var SurfaceIndex(default,set):Int;

    private inline function set_SurfaceIndex(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.SurfaceIndex = {1}", this, __value);
    }

}
