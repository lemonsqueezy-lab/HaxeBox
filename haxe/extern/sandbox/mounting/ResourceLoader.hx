package sandbox.mounting;

@:native("Sandbox.Mounting.ResourceLoader`1")
extern class ResourceLoader<T> {
    @:protected function new():Void;
    var Host(default,never):T;
}
