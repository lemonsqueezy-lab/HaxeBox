package sandbox;

/** Allows easily dressing a citizen or human in clothing */
@:native("Sandbox.Dresser")
final extern class Dresser extends sandbox.Component {
    function new():Void;
    /** Where to get the clothing from */
    var Source(default,default):sandbox.dresser.ClothingSource;
    /** Who are we dressing? This should be the renderer of the body of a Citizen or Human */
    var BodyTarget(default,default):sandbox.SkinnedModelRenderer;
    /** Should we change the height too? */
    var ApplyHeightScale(default,default):Bool;
    var ManualHeight(default,default):Single;
    var ManualTint(default,default):Single;
    var ManualAge(default,default):Single;
    var Clothing(default,default):system.collections.generic.List<sandbox.clothingcontainer.ClothingEntry>;
    var WorkshopItems(default,default):system.collections.generic.List<String>;
    /** True if we're dressing, in an async way */
    var IsDressing(default,never):Bool;
    function Apply():system.threading.tasks.ValueTask;
    /** If we're dressing in an async way - stop it. */
    function CancelDressing():Void;
    function Clear():Void;
    @:protected function OnEnabled():Void;
    /** Called when Height, Age or Tint is changed */
    function OnManualChange(a:Single, b:Single):Void;
    @:protected function OnStart():Void;
    @:protected function OnValidate():Void;
    /** Make a random outfit */
    function Randomize():Void;
}
