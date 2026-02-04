package sandbox;

/** Test for access rules compliance. Can be shared to prevent unnecessary re-checking or resolving. */
@:native("Sandbox.AccessControl")
extern class AccessControl {
    function new():Void;
    function Dispose():Void;
    /** If we're definitely never going to see this assembly again (because it's being unloaded for instance) We can totally get rid of it and free all that lovely memory. */
    function ForgetAssembly(name:String):Void;
    /** Forget all versions of the named assembly strictly older than this one. */
    overload function ForgetOlderAssemblyDefinitions(name:mono.cecil.AssemblyNameReference):Void;
    overload function ForgetOlderAssemblyDefinitions(name:system.reflection.AssemblyName):Void;
    overload function Resolve(name:mono.cecil.AssemblyNameReference):mono.cecil.AssemblyDefinition;
    overload function Resolve(name:mono.cecil.AssemblyNameReference, parameters:mono.cecil.ReaderParameters):mono.cecil.AssemblyDefinition;
    /** Dangerous! Create a of the given stream without actually passing it through access control. */
    function TrustUnsafe(dll:Array<Int>):sandbox.TrustedBinaryStream;
    function VerifyAssembly(dll:system.io.Stream, outStream:sandbox.TrustedBinaryStream, addToWhitelist:Bool):sandbox.AccessControlResult;
}
