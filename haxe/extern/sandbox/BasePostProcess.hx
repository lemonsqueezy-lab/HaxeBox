package sandbox;

@:native("Sandbox.BasePostProcess`1")
extern class BasePostProcess<T> {
    @:protected function new():Void;
    @:protected function GetWeighted<U>(value:system.Func2<T,U>, defaultVal:U, onlyLerpBetweenVolumes:Bool):U;
}
