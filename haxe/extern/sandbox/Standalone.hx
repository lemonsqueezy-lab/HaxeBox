package sandbox;

@:native("Sandbox.Standalone")
final extern class Standalone {
    /** The date and time at which the current standalone game was built */
    static var BuildDate(default,never):system.DateTime;
    /** Is the current standalone game running in development mode? */
    static var IsDevelopmentBuild(default,never):Bool;
    /** The date and time at which the current standalone game was built */
    static var VersionDate(default,never):system.DateTime;
    /** Represents the current standalone game's version, specified by the developer */
    static var Version(default,never):system.Version;
}
