package sandbox.moviemaker;

@:native("Sandbox.MovieMaker.IPropertySignal`1")
extern class IPropertySignal<T> {
    function GetValue(time:sandbox.moviemaker.MovieTime):T;
}
