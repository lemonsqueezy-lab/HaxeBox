package sandbox.engine.bindcollection;

@:native("Sandbox.Engine.BindCollection.ActionBind")
extern class ActionBind {
    function new():Void;
    var Name(default,default):String;
    /** If this is set then we want to read the value from the base collection */
    var IsCommon(default,default):Bool;
    var Default(default,default):String;
    var Slots(default,default):Array<sandbox.engine.bindcollection.BindEntry>;
}
