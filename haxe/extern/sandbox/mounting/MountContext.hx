package sandbox.mounting;

@:native("Sandbox.Mounting.MountContext")
final extern class MountContext {
    function Add(type:sandbox.mounting.ResourceType, path:String, entry:sandbox.mounting.ResourceLoader<Dynamic>):Void;
    function AddError(v:String):Void;
}
