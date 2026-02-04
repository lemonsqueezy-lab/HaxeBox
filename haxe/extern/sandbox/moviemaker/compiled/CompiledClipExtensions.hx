package sandbox.moviemaker.compiled;

/** Helper methods for working with , , or . */
@:native("Sandbox.MovieMaker.Compiled.CompiledClipExtensions")
final extern class CompiledClipExtensions {
    /** Helper for creating a compiled child track with the given and value . Some special cases if the parent track is a reference track: is Returns a game object reference track extends Returns a component reference track By default, returns a property track. */
    static function Child(track:sandbox.moviemaker.compiled.ICompiledTrack, name:String, type:cs.system.Type):sandbox.moviemaker.compiled.ICompiledTrack;
    /** Create a nested that targets a with the type . */
    static overload function Component<T>(track:sandbox.moviemaker.compiled.CompiledReferenceTrack<sandbox.GameObject>, id:Null<system.Guid>):sandbox.moviemaker.compiled.CompiledReferenceTrack<T>;
    static overload function Component(track:sandbox.moviemaker.compiled.CompiledReferenceTrack<sandbox.GameObject>, type:cs.system.Type, id:Null<system.Guid>, referenceId:Null<system.Guid>):sandbox.moviemaker.compiled.ICompiledReferenceTrack;
    /** Create a nested that targets a with the given . */
    static function GameObject(track:sandbox.moviemaker.compiled.CompiledReferenceTrack<sandbox.GameObject>, name:String, id:Null<system.Guid>, referenceId:Null<system.Guid>):sandbox.moviemaker.compiled.CompiledReferenceTrack<sandbox.GameObject>;
    static function Item<TItem>(track:sandbox.moviemaker.compiled.CompiledPropertyTrack<system.collections.generic.List<TItem>>, index:Int, blocks:system.collections.generic.IEnumerable<sandbox.moviemaker.compiled.ICompiledPropertyBlock<TItem>>):sandbox.moviemaker.compiled.CompiledPropertyTrack<TItem>;
    /** Create a nested that targets a property with the given in the parent track. */
    static overload function Property<T>(track:sandbox.moviemaker.compiled.ICompiledTrack, name:String, blocks:system.collections.generic.IEnumerable<sandbox.moviemaker.compiled.ICompiledPropertyBlock<T>>):sandbox.moviemaker.compiled.CompiledPropertyTrack<T>;
    static overload function Property(track:sandbox.moviemaker.compiled.ICompiledTrack, name:String, type:cs.system.Type, blocks:system.collections.generic.IEnumerable<sandbox.moviemaker.compiled.ICompiledPropertyBlock<Dynamic>>):sandbox.moviemaker.compiled.ICompiledPropertyTrack;
    static function Sample<T>(samples:system.collections.generic.IReadOnlyList<T>, time:sandbox.moviemaker.MovieTime, sampleRate:Int, interpolator:sandbox.moviemaker.IInterpolator<T>):T;
    static function WithConstant<T>(track:sandbox.moviemaker.compiled.CompiledPropertyTrack<T>, timeRange:sandbox.moviemaker.MovieTimeRange, value:T):sandbox.moviemaker.compiled.CompiledPropertyTrack<T>;
    static function WithSamples<T>(track:sandbox.moviemaker.compiled.CompiledPropertyTrack<T>, timeRange:sandbox.moviemaker.MovieTimeRange, sampleRate:Int, values:system.collections.generic.IEnumerable<T>):sandbox.moviemaker.compiled.CompiledPropertyTrack<T>;
}
