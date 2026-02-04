package sandbox.services;

@:native("Sandbox.Services.NewsPostDto")
extern class NewsPostDto {
    function new():Void;
    var Id(default,default):system.Guid;
    var Created(default,default):system.DateTimeOffset;
    var Title(default,default):String;
    var Summary(default,default):String;
    var Url(default,default):String;
    var Author(default,default):sandbox.services.Player;
    var Package(default,default):String;
    var Media(default,default):String;
    var Sections(default,default):Array<sandbox.services.NewsSectionDto>;
}
