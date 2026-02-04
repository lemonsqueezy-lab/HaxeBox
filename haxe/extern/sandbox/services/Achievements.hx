package sandbox.services;

/** Allows access to stats for the current game. Stats are defined by the game's author and can be used to track anything from player actions to performance metrics. They are how you submit data to leaderboards. */
@:native("Sandbox.Services.Achievements")
final extern class Achievements {
    static var All(default,never):system.collections.generic.IEnumerable<sandbox.Achievement>;
    static function Unlock(name:String):Void;
}
