package sandbox.html;

@:native("Sandbox.Html.INode")
extern class INode {
    var IsElement(default,never):Bool;
    var IsText(default,never):Bool;
    var IsComment(default,never):Bool;
    var IsDocument(default,never):Bool;
    var OuterHtml(default,never):String;
    var InnerHtml(default,never):String;
    var Children(default,never):system.collections.generic.IEnumerable<sandbox.html.INode>;
    var Name(default,never):String;
    overload function GetAttribute(name:String, def:String):String;
    overload function GetAttribute<T>(name:String, def:T):T;
    function GetAttributeBool(name:String, def:Bool):Bool;
    function GetAttributeFloat(name:String, def:Single):Single;
    function GetAttributeInt(name:String, def:Int):Int;
    static function Parse(html:String):sandbox.html.INode;
}
