package sandbox.services;

/** News Posts */
@:native("Sandbox.Services.News")
final extern class News {
    function new():Void;
    var Id(default,never):system.Guid;
    var Created(default,never):system.DateTimeOffset;
    var Title(default,never):String;
    var Summary(default,never):String;
    var Url(default,never):String;
    var Author(default,never):sandbox.services.players.Profile;
    var Package(default,never):sandbox.Package;
    var Media(default,never):String;
    static function GetNews(take:Int, skip:Int):system.threading.tasks.Task1<Array<sandbox.services.News>>;
    static function GetOrganizationNews(org:String, take:Int, skip:Int):system.threading.tasks.Task1<Array<sandbox.services.News>>;
    static function GetPackageNews(package:String, take:Int, skip:Int):system.threading.tasks.Task1<Array<sandbox.services.News>>;
    static function GetPlatformNews(take:Int, skip:Int):system.threading.tasks.Task1<Array<sandbox.services.News>>;
}
