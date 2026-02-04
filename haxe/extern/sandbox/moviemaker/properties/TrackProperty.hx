package sandbox.moviemaker.properties;

@:native("Sandbox.MovieMaker.Properties.TrackProperty")
final extern class TrackProperty {
    static overload function Create(parent:sandbox.moviemaker.ITrackTarget<Dynamic>, name:String):sandbox.moviemaker.ITrackProperty<Dynamic>;
    static overload function Create<T>(parent:sandbox.moviemaker.ITrackTarget<Dynamic>, name:String):sandbox.moviemaker.ITrackProperty<T>;
    static overload function Create(parent:sandbox.moviemaker.ITrackTarget<Dynamic>, name:String, targetType:cs.system.Type):sandbox.moviemaker.ITrackProperty<Dynamic>;
    static function GetAll(parent:sandbox.moviemaker.ITrackTarget<Dynamic>):system.collections.generic.IEnumerable<system.ValueTuple3<String,String,cs.system.Type>>;
}
