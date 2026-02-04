package sandbox;

@:native("Sandbox.Application")
final extern class Application {
    /** Steam AppId of S&box. */
    static var AppId(default,never):system.UInt64;
    /** True if we're running the engine as part of a unit test */
    static var IsUnitTest(default,never):Bool;
    /** True if running without a graphics window, such as in a terminal. */
    static var IsHeadless(default,never):Bool;
    /** True if running in a terminal like console, instead of a game window or editor. */
    static var IsConsoleApp(default,never):Bool;
    /** True if this is a dedicated server */
    static var IsDedicatedServer(default,never):Bool;
    /** True if running with the tools or editor attached */
    static var IsEditor(default,never):Bool;
    /** The engine's version string */
    static var Version(default,never):String;
    /** The date of this version, as a UTC datetime. */
    static var VersionDate(default,never):system.DateTime;
    /** True if the game is running in standalone mode */
    static var IsStandalone(default,never):Bool;
    /** The language code for the current language */
    static var LanguageCode(default,never):String;
    /** True if the game is running in VR mode */
    static var IsVR(default,never):Bool;
    static var IsDebug(default,never):Bool;
    /** Returns true if the microphone is currently listening */
    static var IsMicrophoneListening(default,never):Bool;
    /** Returns true if the microphone is currently listening and actually hearing/capturing sounds */
    static var IsMicrophoneRecording(default,never):Bool;
    /** Is the game window in focus? */
    static var IsFocused(default,never):Bool;
    static var CheatsEnabled(default,never):Bool;
    /** Allows access to the RenderSettings singleton, which contains settings related to rendering in the game. You're only able to access this when in standalone mode. When accessing in the editor, or in sbox it will return null. */
    static var RenderSettings(default,never):sandbox.engine.settings.RenderSettings;
    /** Get the current editor if any. Will return null if we're not in the editor, or there is no active editor session. */
    static var Editor(default,never):editor.EditorSystem;
}
