package sandbox;

/** Allows you to look up references for a compiler. */
@:native("Sandbox.ICompileReferenceProvider")
extern class ICompileReferenceProvider {
    /** Find a reference for this dll */
    function Lookup(reference:String):microsoft.codeanalysis.PortableExecutableReference;
}
