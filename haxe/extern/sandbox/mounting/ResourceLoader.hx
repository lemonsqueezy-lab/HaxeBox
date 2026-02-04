package sandbox.mounting;

@:native("Sandbox.Mounting.ResourceLoader`1")
extern class ResourceLoader<T> {
    var Host(default,never):T;
    /** The type of resource this file can provide. */
    var Type(default,never):sandbox.mounting.ResourceType;
    /** The path to the asset */
    var Path(default,never):String;
    /** The filename of the asset, without extension */
    var Name(default,never):String;
    /** General tags. Anything you want to do that doesn't fit into the flags. */
    var Tags(default,never):system.collections.generic.HashSet<String>;
    /** Flags allow customization of how this resource is treated by the engine. */
    var Flags(default,default):sandbox.mounting.ResourceFlags;
    /** The folder in which this resource resides */
    var Folder(default,never):sandbox.mounting.ResourceFolder;
}
