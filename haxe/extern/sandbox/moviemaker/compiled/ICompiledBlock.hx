package sandbox.moviemaker.compiled;

/** A block of time where something happens in an . */
@:native("Sandbox.MovieMaker.Compiled.ICompiledBlock")
extern class ICompiledBlock {
    /** Move this block by the given time . */
    function Shift(offset:sandbox.moviemaker.MovieTime):sandbox.moviemaker.compiled.ICompiledBlock;
}
