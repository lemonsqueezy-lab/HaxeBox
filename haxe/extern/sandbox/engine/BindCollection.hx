package sandbox.engine;

/** A collection of action binds. BindCollection - Action: attack1 - Slot0: mouse1 - Action: selectall - Slot0: ctrl + a The bind collection can be saved and loaded from disk via the BindSaveConfig class. The bind collection can have a base collection which it will fall back to if it contains the same binds. This allows us to have a "common" collection which can be shared between all games, but can also let the games + users to override those binds if they choose. */
@:native("Sandbox.Engine.BindCollection")
extern class BindCollection {
    /** Creates a collection and tries to load it from disk. */
    function new(name:String):Void;
    /** The base collection. Game binds have this set to the common binds. */
    var Base(default,default):sandbox.engine.BindCollection;
    /** Will be either "common" or the ident of the current game. */
    var CollectionName(default,default):String;
    /** The location of the config file to load from in EngineFileSystem.Config */
    var ConfigPath(default,default):String;
    var Actions(default,default):sandbox.CaseInsensitiveDictionary<sandbox.engine.bindcollection.ActionBind>;
    /** Get the bind value at this slot */
    function Get(actionName:String, slot:Int):String;
    /** Get the bind, create if it doesn't exist */
    function GetBind(actionName:String, create:Bool):sandbox.engine.bindcollection.ActionBind;
    /** Save the collection to disk */
    function SaveToDisk():Void;
    /** Set the bind value for this action. This will overwrite what's in this slot. */
    function Set(actionName:String, slot:Int, buttonName:String):sandbox.engine.bindcollection.ActionBind;
}
