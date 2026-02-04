package sandbox.resources.resourcecompilecontext;

@:native("Sandbox.Resources.ResourceCompileContext.DataStream")
extern class DataStream {
    /** Write a string with a null terminator */
    overload function Write(bytes:Array<Int>):Void;
    overload function Write(strValue:String):Void;
}
