package sandbox.ui;

@:native("Sandbox.UI.ConvarToggleButton")
extern class ConvarToggleButton extends sandbox.ui.Button {
    overload function new():Void;
    overload function new(parent:sandbox.ui.Panel, label:String, convar:String, onvalue:String, offvalue:String, icon:String):Void;
    var ConVar(default,default):String;
    var ValueOn(default,default):String;
    var ValueOff(default,default):String;
    @:protected function OnClick(e:sandbox.ui.MousePanelEvent):Void;
    function SetProperty(name:String, value:String):Void;
    function Tick():Void;
    function Toggle():Void;
}
