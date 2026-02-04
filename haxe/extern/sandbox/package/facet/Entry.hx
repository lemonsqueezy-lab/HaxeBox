package sandbox.package.facet;

/** A facet entry consists of a name, display information and the number of items inside */
@:native("Sandbox.Package.Facet.Entry")
extern class Entry {
    /** A facet entry consists of a name, display information and the number of items inside */
    function new(Name:String, Title:String, Icon:String, Count:Int, Children:system.collections.generic.List<sandbox.package.facet.Entry>):Void;
    @:protected
    var EqualityContract(null,never):cs.system.Type;
    var Name(default,default):String;
    var Title(default,default):String;
    var Icon(default,default):String;
    var Count(default,default):Int;
    var Children(default,default):system.collections.generic.List<sandbox.package.facet.Entry>;
    function Deconstruct(Name:String, Title:String, Icon:String, Count:Int, Children:system.collections.generic.List<sandbox.package.facet.Entry>):Void;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.package.facet.Entry):Bool;
    function GetHashCode():Int;
    @:protected function PrintMembers(builder:system.text.StringBuilder):Bool;
    function ToString():String;
}
