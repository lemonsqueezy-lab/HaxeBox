package sandbox.services.achievements;

/** Stats for the current map */
@:native("Sandbox.Services.Achievements.Map")
final extern class Map {
    static var All(default,never):system.collections.generic.IEnumerable<sandbox.Achievement>;
    static function Get(name:String):sandbox.Achievement;
    static function Unlock(name:String):Void;
}
