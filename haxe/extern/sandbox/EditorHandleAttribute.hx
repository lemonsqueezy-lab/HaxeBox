package sandbox;

/** When applied to a component, the editor will draw a selectable handle sprite for the gameobject in scene */
@:native("Sandbox.EditorHandleAttribute")
extern class EditorHandleAttribute {
    overload function new():Void;
    overload function new(texture:String):Void;
    var Texture(default,default):String;
    var Icon(default,default):String;
    var Color(default,default):Color;
    var TypeId(default,never):cs.system.Object;
}
