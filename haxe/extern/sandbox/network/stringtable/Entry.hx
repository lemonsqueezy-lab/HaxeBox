package sandbox.network.stringtable;

@:native("Sandbox.Network.StringTable.Entry")
extern class Entry {
    function new():Void;
    var Name(default,default):String;
    var Data(default,default):Array<Int>;
}
