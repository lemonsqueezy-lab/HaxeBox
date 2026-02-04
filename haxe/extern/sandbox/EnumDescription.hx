package sandbox;

@:native("Sandbox.EnumDescription")
extern class EnumDescription {
    var Unique(default,never):Array<sandbox.enumdescription.Entry>;
    function GetEntries(value:haxe.Int64):Array<sandbox.enumdescription.Entry>;
    overload function GetEntry(value:cs.system.Object):sandbox.enumdescription.Entry;
    overload function GetEntry(value:haxe.Int64):sandbox.enumdescription.Entry;
    function GetEnumerator():system.collections.generic.IEnumerator<sandbox.enumdescription.Entry>;
}
