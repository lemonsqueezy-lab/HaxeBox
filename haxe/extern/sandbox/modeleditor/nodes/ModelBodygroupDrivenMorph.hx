package sandbox.modeleditor.nodes;

@:native("Sandbox.ModelEditor.Nodes.ModelBodygroupDrivenMorph")
extern class ModelBodygroupDrivenMorph {
    function new():Void;
    var BodygroupName(default,default):String;
    var bodygroupChoice(default,default):Int;
    var MorphChannel(default,default):String;
}
