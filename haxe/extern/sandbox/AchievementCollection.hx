package sandbox;

/** Holds achievements for a package */
@:native("Sandbox.AchievementCollection")
final extern class AchievementCollection {
    function new(packageIdent:String):Void;
    var All(default,never):system.collections.generic.IReadOnlyCollection<sandbox.Achievement>;
    /** Get achievement by name, or null of it doesn't exist */
    function Get(name:String):sandbox.Achievement;
    /** Use the current stats to recount the progression on stats with progression. This is purely for UI, you can't force an achivement to unlock early by calling this. */
    function RecountProgression():system.threading.tasks.Task;
}
