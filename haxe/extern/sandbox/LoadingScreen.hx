package sandbox;

/** Holds metadata and raw data relating to a Saved Game. */
@:native("Sandbox.LoadingScreen")
final extern class LoadingScreen {
    static var IsVisible(default,default):Bool;
    /** A title to show */
    static var Title(default,default):String;
    /** A subtitle to show */
    static var Subtitle(default,default):String;
    /** A URL or filepath to show as the background image. */
    static var Media(default,default):String;
    /** A list of tasks that are currently being awaited during loading. */
    static var Tasks(default,never):system.collections.generic.List<sandbox.LoadingContext>;
}
