package sandbox.ui.textblock;

@:native("Sandbox.UI.TextBlock.HtmlSpan")
extern class HtmlSpan {
    function new(node:sandbox.html.INode, from:Int, to:Int):Void;
    @:protected
    var EqualityContract(null,never):cs.system.Type;
    var node(default,default):sandbox.html.INode;
    var from(default,default):Int;
    var to(default,default):Int;
    function Deconstruct(node:sandbox.html.INode, from:Int, to:Int):Void;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.ui.textblock.HtmlSpan):Bool;
    function GetHashCode():Int;
    @:protected function PrintMembers(builder:system.text.StringBuilder):Bool;
    function ToString():String;
}
