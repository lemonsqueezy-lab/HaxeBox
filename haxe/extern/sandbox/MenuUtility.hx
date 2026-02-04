package sandbox;

@:native("Sandbox.MenuUtility")
final extern class MenuUtility {
    static var Tick(default,default):system.Action;
    /** If current game is active, return the package */
    static var GamePackage(default,never):sandbox.Package;
    /** Get all friends. */
    static var Friends(default,never):system.collections.generic.IEnumerable<sandbox.Friend>;
    /** Number of seconds escape has been held down */
    static var EscapeTime(default,never):Single;
    /** We might be running the game from sbox.game, so we want the menu system to open the game immediately */
    static var StartupGameIdent(default,never):String;
    /** Access to the client's render settings */
    static var RenderSettings(default,never):sandbox.engine.settings.RenderSettings;
    static function AddLogger(logger:system.Action1<sandbox.LogEvent>):Void;
    static function AutoComplete(text:String, maxCount:Int):Array<sandbox.concmdattribute.AutoCompleteResult>;
    /** This is called when the cancel button is pressed when loading. We should disconnect and leave the game. */
    static function CancelLoading():Void;
    /** Close every open modal */
    static function CloseAllModals():Void;
    /** Close the current game. */
    static function CloseGame():Void;
    /** Init a stream service */
    static function ConnectStream(service:sandbox.StreamService):system.threading.tasks.Task1<Bool>;
    static function CreateSceneWorld():sandbox.SceneWorld;
    /** Delete avatar in slot x */
    static function DeleteAvatar(slot:Int):system.threading.tasks.Task;
    /** Delete all avatars, return to default */
    static function DeleteAvatars():system.threading.tasks.Task;
    /** Init a stream service */
    static function DisconnectStream():Void;
    /** Get a list of recent achievement progress */
    static function GetAchievementOverviews(count:Int):system.threading.tasks.Task1<Array<sandbox.services.AchievementOverview>>;
    /** How many notifications does the player have? */
    static function GetNotificationCount():system.threading.tasks.Task1<Int>;
    /** Get a list of notifications */
    static function GetNotifications(count:Int):system.threading.tasks.Task1<Array<sandbox.services.Notification>>;
    /** Get the player's friend activity feed */
    static function GetPlayerFeed(take:Int):system.threading.tasks.Task1<Array<sandbox.services.Feed>>;
    /** Opens the invite overlay */
    static function InviteOverlayToParty():Void;
    /** Invite someone to the current party. If one exists */
    static function InviteToParty(steamid:sandbox.SteamId):Void;
    /** Join the game a friend is in */
    static function JoinFriendGame(friend:sandbox.Friend):Void;
    /** Mark the player's notifications as all read. Call when viewing notifications. */
    static function MarkNotificationsRead():system.threading.tasks.Task1<Int>;
    /** Open an 'open file' dialog */
    static function OpenFileDialog():String;
    /** Open a folder */
    static function OpenFolder(path:String):Void;
    /** A game has been opened. Load the game. If allowLaunchOverride then special launch conditions will be obeyed. For example, we might join a lobby instead of loading the game, or we might open the launcher. */
    static function OpenGame(ident:String, allowLaunchOverride:Bool, gameSettings:system.collections.generic.Dictionary<String,String>):Void;
    /** A game has been opened. Load the game. */
    static function OpenGameWithMap(gameident:String, mapName:String, gameSettings:system.collections.generic.Dictionary<String,String>):Void;
    /** Open a url */
    static function OpenUrl(path:String):Void;
    /** Post a review for a package */
    static function PostReview(packageIdent:String, score:sandbox.services.review.ReviewScore, content:String):system.threading.tasks.Task;
    static function RemoveLogger(logger:system.Action1<sandbox.LogEvent>):Void;
    /** Allows async tasks to wait to be executed in the menu context */
    static function RunTask(func:system.Func1<system.threading.tasks.Task>):Void;
    /** Get a list of recent achievement progress */
    static function SaveAvatar(container:sandbox.ClothingContainer, isActive:Bool, slot:Int):system.threading.tasks.Task;
    /** Set a console variable. Unlike ConsoleSystem.*, this is unprotected and allows any console variable to be changed. */
    static function SetConsoleVariable(name:String, value:cs.system.Object):Void;
    static function SetModalSystem(system:sandbox.modals.IModalSystem):Void;
    /** Listen to the voice */
    static function SetVoiceListen(b:Bool):Void;
    static function SkipAllTransitions():Void;
    /** Try to join any lobby for this game. */
    static function TryJoinLobby(ident:String):system.threading.tasks.Task1<Bool>;
}
