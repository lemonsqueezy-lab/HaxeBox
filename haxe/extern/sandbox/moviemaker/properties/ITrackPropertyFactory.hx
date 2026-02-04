package sandbox.moviemaker.properties;

@:native("Sandbox.MovieMaker.Properties.ITrackPropertyFactory`2")
extern class ITrackPropertyFactory<TParent,TValue> {
    function CreateProperty(parent:TParent, name:String):sandbox.moviemaker.ITrackProperty<TValue>;
    function PropertyExists(parent:TParent, name:String):Bool;
}
