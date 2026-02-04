package sandbox.services;

@:native("Sandbox.Services.PackageDto")
extern class PackageDto {
    function new():Void;
    var Org(default,default):sandbox.services.OrganizationDto;
    var Ident(default,default):String;
    var Title(default,default):String;
    var Summary(default,default):String;
    var Description(default,default):String;
    var Thumb(default,default):String;
    var ThumbWide(default,default):String;
    var ThumbTall(default,default):String;
    var Updated(default,default):system.DateTimeOffset;
    var Created(default,default):system.DateTimeOffset;
    var UsageStats(default,default):sandbox.services.PackageUsageStats;
    var ReviewStats(default,default):sandbox.services.PackageReviewStats;
    var Tags(default,default):Array<String>;
    var Favourited(default,default):Int;
    var VotesUp(default,default):Int;
    var VotesDown(default,default):Int;
    var Version(default,default):sandbox.services.PackageVersion;
    var Source(default,default):String;
    var Public(default,default):Bool;
    var Archive(default,default):Bool;
    var ApiVersion(default,default):Int;
    var Screenshots(default,default):Array<sandbox.services.Screenshot>;
    var TypeName(default,default):String;
    var PackageReferences(default,default):Array<String>;
    var EditorReferences(default,default):Array<String>;
    var Interaction(default,default):sandbox.services.PackageInteraction;
    var LoadingScreen(default,default):sandbox.services.packagedto.LoadingScreenSetup;
    var Data(default,default):system.collections.generic.Dictionary<String,cs.system.Object>;
    var LatestNews(default,default):sandbox.services.NewsPostDto;
    var ErrorRate(default,default):Single;
    var AssetLicense(default,default):sandbox.LicenseType;
    var SoftwareLicense(default,default):sandbox.LicenseType;
    function DevLink(append:String):String;
}
