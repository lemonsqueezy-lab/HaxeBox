package sandbox;

/** Configuration for GameObjectSystem properties at a project level. Specific scenes may override this as well - but will be serialized directly in the scene. */
@:native("Sandbox.SystemsConfig")
extern class SystemsConfig {
    function new():Void;
    /** Stores GameObjectSystems to property names to property values */
    @:protected
    var Systems(null,null):system.collections.generic.Dictionary<String,system.collections.generic.Dictionary<String,cs.system.Object>>;
    var Guid(default,default):system.Guid;
    var Version(default,never):Int;
    /** Get property value for a specific system type. Returns the configured value, or a default value for the type if not found. */
    function GetPropertyValue(systemType:sandbox.TypeDescription, property:sandbox.PropertyDescription):cs.system.Object;
    /** Set property value for a specific system type */
    function SetPropertyValue(systemType:sandbox.TypeDescription, property:sandbox.PropertyDescription, value:cs.system.Object):Void;
    function TryGetPropertyValue(systemType:sandbox.TypeDescription, property:sandbox.PropertyDescription, value:cs.system.Object):Bool;
}
