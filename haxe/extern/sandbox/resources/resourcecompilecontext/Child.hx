package sandbox.resources.resourcecompilecontext;

@:native("Sandbox.Resources.ResourceCompileContext.Child")
extern class Child {
    @:protected function new():Void;
    function Compile():Bool;
    function SetInputData(data:String):Void;
}
