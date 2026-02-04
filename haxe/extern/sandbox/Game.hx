package sandbox;

/** Provides global access to core game state, utilities, and operations for S&box. The class exposes static properties and methods to query and control the running game, such as checking if the game is running, getting your steamid, taking screenshots, and managing game sessions. */
@:native("Sandbox.Game")
final extern class Game {
    /** Steam AppId of S&box. */
    static var AppId(default,never):system.UInt64;
    /** Return true if we're in a game (ie, not in the main menu) */
    static var InGame(default,never):Bool;
    /** Returns true if the game is running with the editor enabled */
    static var IsEditor(default,never):Bool;
    /** Returns the current game's ident - ie facepunch.sandbox */
    static var Ident(default,never):String;
    /** Returns true if the main menu is visible. Note that this will work serverside too but will only return the state of the host. */
    static var IsMainMenuVisible(default,never):Bool;
    /** True if we're currently recording a video (using the video command, or F6) */
    static var IsRecordingVideo(default,never):Bool;
    /** Set to true when the game is closing */
    static var IsClosing(default,never):Bool;
    /** Return true if we're running in VR */
    static var IsRunningInVR(default,never):Bool;
    /** Return true if we're running on a handheld device (the deck). Will always be false serverside. */
    static var IsRunningOnHandheld(default,never):Bool;
    /** A shared random that is automatically seeded on tick */
    static var Random(default,never):system.Random;
    /** Your SteamId */
    static var SteamId(default,never):sandbox.SteamId;
    /** Trace against the physics in the current scene */
    static var PhysicsTrace(default,never):sandbox.PhysicsTraceBuilder;
    /** Trace against the physics and hitboxes in the current scene */
    static var SceneTrace(default,never):sandbox.SceneTrace;
    /** This has to be in Game.dll so the codegen will get generated for it */
    static var CheatsEnabled(default,default):Bool;
    /** Provides access to the global for the current game context. The TypeLibrary is a runtime reflection system that describes types, their members, and relationships in the game and engine assemblies. It allows you to find and create types by name and id. It's basically a sandboxed version of the .net reflection system. */
    static var TypeLibrary(default,never):sandbox.internal.TypeLibrary;
    /** Allows access to the cookies for the current game. The cookies are used to store persistent data across game sessions, such as user preferences or session data. Internally the cookies are encoded to JSON and stored in a file on disk. */
    static var Cookies(default,never):sandbox.CookieContainer;
    /** Lets you get translated phrases from the localization system */
    static var Language(default,never):sandbox.LanguageContainer;
    /** Indicates whether the game is currently running and actively playing a scene. */
    static var IsPlaying(default,never):Bool;
    /** Indicates whether the game is currently paused. */
    static var IsPaused(default,default):Bool;
    /** The current scene that is being played. */
    static var ActiveScene(default,never):sandbox.Scene;
    /** Change the active scene and optionally bring all connected clients to the new scene (broadcast the scene change.) If we're in a networking session, then only the host can change the scene. */
    static function ChangeScene(options:sandbox.SceneLoadOptions):Bool;
    /** Close the current game. */
    static function Close():Void;
    /** Create a limited web surface */
    static function CreateWebSurface():sandbox.WebSurface;
    /** Disconnect from the current game session */
    static function Disconnect():Void;
    /** Load a game. You can configure the new game with LaunchArguments before calling this. */
    static function Load(gameIdent:String, keepClients:Bool):Void;
    /** Set the seed for Game.Random */
    static function SetRandomSeed(seed:Int):Void;
    /** Capture a high resolution screenshot using the active scene camera. */
    static function TakeHighResScreenshot(width:Int, height:Int):Void;
    /** Capture a screenshot. Saves it in Steam. */
    static function TakeScreenshot():Void;
}
