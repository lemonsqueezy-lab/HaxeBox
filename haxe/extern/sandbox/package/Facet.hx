package sandbox.package;

/** Describes a facet of a group of items, with a limited number of each facet with their total item counts */
@:native("Sandbox.Package.Facet")
extern class Facet {
    /** Describes a facet of a group of items, with a limited number of each facet with their total item counts */
    function new(Name:String, Title:String, Entries:Array<sandbox.package.facet.Entry>):Void;
    @:protected
    var EqualityContract(null,never):cs.system.Type;
    var Name(default,default):String;
    var Title(default,default):String;
    var Entries(default,default):Array<sandbox.package.facet.Entry>;
    function Deconstruct(Name:String, Title:String, Entries:Array<sandbox.package.facet.Entry>):Void;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.package.Facet):Bool;
    function GetHashCode():Int;
    @:protected function PrintMembers(builder:system.text.StringBuilder):Bool;
    function ToString():String;
}
