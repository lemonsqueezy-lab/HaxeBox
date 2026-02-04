package sandbox;

@:native("Sandbox.ProjectSettings")
extern class ProjectSettings {
    function new():Void;
    /** Get the from the active project settings. */
    static var Collision(default,never):sandbox.physics.CollisionRules;
    /** Get the from the active project settings. */
    static var Input(default,never):sandbox.InputSettings;
    /** Get the from the active project settings. */
    static var Networking(default,never):sandbox.NetworkingSettings;
    /** Get the from the active project settings. */
    static var Physics(default,never):sandbox.physics.PhysicsSettings;
    /** Get the from the active project settings. */
    static var Systems(default,never):sandbox.SystemsConfig;
    /** Gets or creates a default version of this config data. You can safely call this multiple times and it will return the same object. The cache is cleared automatically when the project changes, or when it's hotloaded. */
    static function Get<T>(filename:String):T;
}
