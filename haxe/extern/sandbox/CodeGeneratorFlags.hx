package sandbox;

/** Used to specify what type of code generation to perform. */
@:native("Sandbox.CodeGeneratorFlags")
extern enum abstract CodeGeneratorFlags(Int) {
    var WrapPropertyGet;
    var WrapPropertySet;
    var WrapMethod;
    var Static;
    var Instance;
}
