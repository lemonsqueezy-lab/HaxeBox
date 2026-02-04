package sandbox.modals;

@:native("Sandbox.Modals.IModalSystem")
extern class IModalSystem {
    var IsModalOpen(default,never):Bool;
    var IsPauseMenuOpen(default,never):Bool;
    function CloseAll(immediate:Bool):Void;
    function CreateGame(options:sandbox.modals.CreateGameOptions):Void;
    function FriendsList(options:sandbox.modals.FriendsListModalOptions):Void;
    function Game(packageIdent:String):Void;
    function HasModalsOpen():Bool;
    function Map(packageIdent:String):Void;
    function News(newsitem:sandbox.services.News):Void;
    function Organization(org:sandbox.package.Organization):Void;
    function Package(packageIdent:String, page:String):Void;
    function PackageSelect(query:String, onPackageSelected:system.Action1<sandbox.Package>, onFilterChanged:system.Action1<String>):Void;
    /** The menu that is shown when escape is pressed while playing. */
    function PauseMenu():Void;
    function Player(steamid:sandbox.SteamId, page:String):Void;
    function PlayerList():Void;
    function Review(package:sandbox.Package):Void;
    function ServerList(config:sandbox.modals.ServerListConfig):Void;
    function Settings(page:String):Void;
    function WorkshopPublish(options:sandbox.modals.WorkshopPublishOptions):Void;
}
