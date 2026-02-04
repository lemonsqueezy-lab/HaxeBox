package sandbox;

@:native("Sandbox.CompilerExtensions")
final extern class CompilerExtensions {
    /** Add a reference to the "base" package. */
    static function AddBaseReference(compiler:sandbox.Compiler):Void;
    /** Add a reference to the given package's editor assembly. */
    static function AddEditorReference(compiler:sandbox.Compiler, reference:sandbox.Package):Void;
    /** Add a reference to the given compiler. */
    static overload function AddReference(compiler:sandbox.Compiler, reference:sandbox.Compiler):Void;
    static overload function AddReference(compiler:sandbox.Compiler, reference:sandbox.Package):Void;
    /** Add a reference to the "toolbase" package. */
    static function AddToolBaseReference(compiler:sandbox.Compiler):Void;
}
