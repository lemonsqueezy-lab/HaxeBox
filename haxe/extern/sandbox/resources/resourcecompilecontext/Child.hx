package sandbox.resources.resourcecompilecontext;

@:native("Sandbox.Resources.ResourceCompileContext.Child")
extern class Child {
    function Compile():Bool;
    function SetInputData(data:String):Void;
}
