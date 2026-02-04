package sandbox.services;

@:native("Sandbox.Services.PackageWrapMinimal")
extern class PackageWrapMinimal {
    function new():Void;
    var Org(default,default):sandbox.services.OrganizationDto;
    var AssetId(default,default):haxe.Int64;
    var Ident(default,default):String;
    var FullIdent(default,never):String;
    var Title(default,default):String;
    var Summary(default,default):String;
    var Thumb(default,default):String;
    var ThumbWide(default,default):String;
    var ThumbTall(default,default):String;
    var VideoThumb(default,default):String;
    var TypeName(default,default):String;
    var Updated(default,default):system.DateTimeOffset;
    var Created(default,default):system.DateTimeOffset;
    var UsageStats(default,default):sandbox.services.PackageUsageStats;
    var Tags(default,default):Array<String>;
    var Favourited(default,default):Int;
    var Collections(default,default):Int;
    var Referencing(default,default):Int;
    var Referenced(default,default):Int;
    var VotesUp(default,default):Int;
    var VotesDown(default,default):Int;
    var Public(default,default):Bool;
    var Interaction(default,default):sandbox.services.PackageInteraction;
    function DevLink(append:String):String;
}
