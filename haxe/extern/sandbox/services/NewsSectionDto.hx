package sandbox.services;

@:native("Sandbox.Services.NewsSectionDto")
extern class NewsSectionDto {
    function new():Void;
    var Id(default,default):system.Guid;
    var Title(default,default):String;
    var Author(default,default):sandbox.services.Player;
    var SortOrder(default,default):Int;
    var Contents(default,default):String;
    var Slug(default,default):String;
}
