package sandbox.mounting;

@:native("Sandbox.Mounting.Directory")
final extern class Directory {
    /** Get a specific mount by name */
    static function Get(name:String):sandbox.mounting.BaseGameMount;
    /** Get information about all the current mounts */
    static function GetAll():Array<sandbox.mounting.MountInfo>;
    /** Mount this game if we can. Returns null if it can't be mounted, or the mount object if it can. If we're already mounted, will just return the mount straight away. */
    static function Mount(name:String):system.threading.tasks.Task1<sandbox.mounting.BaseGameMount>;
}
