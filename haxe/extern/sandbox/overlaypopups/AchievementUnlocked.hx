package sandbox.overlaypopups;

@:native("Sandbox.OverlayPopups.AchievementUnlocked")
extern class AchievementUnlocked extends sandbox.ui.Panel {
    function new():Void;
    var Icon(default,default):String;
    var Title(default,default):String;
    var Description(default,default):String;
    var Score(default,default):Int;
    var PlayerScore(default,default):Int;
    var PlayerScoreLerped(default,never):Int;
    var ScoreLerped(default,never):Int;
    var scoreDelta(default,default):Single;
    @:protected function BuildHash():Int;
    @:protected function BuildRenderTree(__builder:microsoft.aspnetcore.components.rendering.RenderTreeBuilder):Void;
    @:protected function GetRenderTreeChecksum():String;
    @:protected function OnParametersSetAsync():system.threading.tasks.Task;
}
