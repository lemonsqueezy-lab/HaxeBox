package sandbox.ui;

@:native("Sandbox.UI.Option")
extern class Option {
    overload function new():Void;
    overload function new(title:String, icon:String, value:cs.system.Object):Void;
    overload function new(title:String, value:cs.system.Object):Void;
    var Title(default,default):String;
    var Icon(default,default):String;
    var Subtitle(default,default):String;
    var Tooltip(default,default):String;
    var Value(default,default):cs.system.Object;
}
