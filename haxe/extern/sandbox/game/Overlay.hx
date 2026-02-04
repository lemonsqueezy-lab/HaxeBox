package sandbox.game;

/** Provides static methods for displaying various modal overlays in the game UI. The class allows you to open modals for packages, maps, news, organizations, reviews, friends lists, server lists, settings, input bindings, and player profiles. It serves as a central point for invoking user interface overlays that interact with core game and community features. */
@:native("Sandbox.Game.Overlay")
extern class Overlay {
    function new():Void;
    /** Returns true if any overlay is open */
    var IsOpen(default,never):Bool;
    /** Returns true if the pause menu overlay is open */
    var IsPauseMenuOpen(default,never):Bool;
    /** Closes the top overlay if one exists */
    static function Close():Void;
    /** Close all open overlays */
    static function CloseAll(immediate:Bool):Void;
    static function CreateGame(options:sandbox.modals.CreateGameOptions):Void;
    /** Opens a modal that lets you view and rebind game input actions. */
    static function ShowBinds():Void;
    static overload function ShowFriendsList():Void;
    static overload function ShowFriendsList(options:sandbox.modals.FriendsListModalOptions):Void;
    /** Opens a modal for the specified game package */
    static function ShowGameModal(packageIdent:String):Void;
    /** Opens a modal for the specified map package */
    static function ShowMapModal(packageIdent:String):Void;
    /** Opens a modal for the news item */
    static function ShowNewsModal(newsitem:sandbox.services.News):Void;
    /** Opens a modal for the specified organization. This is most likely called from a Package - so get the organization from there. */
    static function ShowOrganizationModal(org:sandbox.package.Organization):Void;
    /** Opens a modal for the specified package */
    static overload function ShowPackageModal(ident:String):Void;
    static overload function ShowPackageModal(ident:String, page:String):Void;
    /** Opens a modal for selecting a package */
    static function ShowPackageSelector(query:String, onSelect:system.Action1<sandbox.Package>, onFilterChanged:system.Action1<String>):Void;
    /** View a selected user's profile */
    static function ShowPlayer(steamid:sandbox.SteamId, page:String):Void;
    /** Open a modal that shows a list of players currently in the game */
    static function ShowPlayerList():Void;
    /** Opens a modal to review the specified package */
    static function ShowReviewModal(package:sandbox.Package):Void;
    static function ShowServerList(config:sandbox.modals.ServerListConfig):Void;
    /** Opens a modal that lets you modify your settings Optionally, you can specify a page to open directly to: "keybinds", "video", "input", "audio", "game", "storage", "developer" */
    static function ShowSettingsModal(page:String):Void;
    static function WorkshopPublish(options:sandbox.modals.WorkshopPublishOptions):Void;
}
