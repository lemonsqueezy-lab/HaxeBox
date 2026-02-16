package;

@:native("GameMount")
extern class GameMount extends sandbox.mounting.BaseGameMount {
    function new():Void;
    @:protected function Initialize(context:sandbox.mounting.InitializeContext):Void;
    @:protected function Mount(context:sandbox.mounting.MountContext):system.threading.tasks.Task;
}
