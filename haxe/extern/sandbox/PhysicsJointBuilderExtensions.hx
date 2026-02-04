package sandbox;

@:native("Sandbox.PhysicsJointBuilderExtensions")
final extern class PhysicsJointBuilderExtensions {
    static function WithAngularStrength<T>(b:T, v:Single):T;
    static function WithBody1<T>(b:T, v:Int):T;
    static function WithBody2<T>(b:T, v:Int):T;
    static function WithCollision<T>(b:T, v:Bool):T;
    static function WithFrame1<T>(b:T, v:Transform):T;
    static function WithFrame2<T>(b:T, v:Transform):T;
    static function WithLinearStrength<T>(b:T, v:Single):T;
}
