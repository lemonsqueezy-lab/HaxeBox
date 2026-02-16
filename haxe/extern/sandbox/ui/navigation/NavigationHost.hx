package sandbox.ui.navigation;

@:native("Sandbox.UI.Navigation.NavigationHost")
extern class NavigationHost extends sandbox.ui.Panel {
    function new():Void;
    var CurrentPanel(default,never):sandbox.ui.Panel;
    var CurrentUrl(default,never):String;
    var DefaultUrl(default,default):String;
    var NavigatorCanvas(default,default):sandbox.ui.Panel;
    var CurrentQuery(default,default):String;
    @:protected
    var Cache(null,null):system.collections.generic.List<sandbox.ui.navigation.navigationhost.HistoryItem>;
    function AddDestination(url:String, type:cs.system.Type):Void;
    function CurrentUrlMatches(url:String):Bool;
    function ExtractProperties(parts:Array<String>, url:String):system.collections.generic.IEnumerable<system.ValueTuple2<String,String>>;
    function GoBack():Bool;
    function GoBackUntilNot(wildcard:String):Bool;
    function GoForward():Bool;
    function Navigate(url:String, redirectToDefault:Bool):sandbox.ui.Panel;
    @:protected function NotFound(url:String):Void;
    @:protected function OnBack(e:sandbox.ui.PanelEvent):Void;
    @:protected function OnForward(e:sandbox.ui.PanelEvent):Void;
    @:protected function OnParametersSet():Void;
    function OnTemplateSlot(element:sandbox.html.INode, slotName:String, panel:sandbox.ui.Panel):Void;
    function SetProperty(name:String, value:String):Void;
}
