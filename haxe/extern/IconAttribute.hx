package;

/** Sets the icon of a type or a type member. Colors are expected in HTML formats, like "rgb(255,255,255)" or "#FFFFFF". This info can then be retrieved via DisplayInfo library. */
@:native("IconAttribute")
final extern class IconAttribute {
    overload function new(icon:String):Void;
    overload function new(icon:String, bgColor:String, fgColor:String):Void;
    var Value(default,default):String;
    /** The preferred background color for the icon. */
    var BackgroundColor(default,never):Null<Color>;
    /** The preferred color of the icon itself. */
    var ForegroundColor(default,never):Null<Color>;
    var TypeId(default,never):cs.system.Object;
}
