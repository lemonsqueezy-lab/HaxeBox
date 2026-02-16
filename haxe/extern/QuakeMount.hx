package;

@:native("QuakeMount")
extern class QuakeMount extends sandbox.mounting.BaseGameMount {
    function new():Void;
    function FileExists(pakDir:String, filename:String):Bool;
    function GetFileBytes(pakDir:String, filename:String):Array<Int>;
    function GetFileStream(pakFolder:String, filename:String):system.io.Stream;
    function GetFullFilePath(pakDir:String, filename:String):String;
    function GetPalette(pakDir:String):Array<Int>;
    @:protected function Initialize(context:sandbox.mounting.InitializeContext):Void;
    @:protected function Mount(context:sandbox.mounting.MountContext):system.threading.tasks.Task;
}
