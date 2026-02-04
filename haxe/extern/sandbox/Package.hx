package sandbox;

/** Represents an asset on Asset Party. */
@:native("Sandbox.Package")
extern class Package {
    function new():Void;
    /** Whether this is a remote or a locally installed package. */
    var IsRemote(default,never):Bool;
    /** The owner of this package. */
    var Org(default,default):sandbox.package.Organization;
    /** Full unique identity of this package. */
    var FullIdent(default,never):String;
    /** Unique identity of this package within its organization.. */
    var Ident(default,default):String;
    /** A "nice" name of this package, which will be shown to players in UI. */
    var Title(default,default):String;
    /** A short summary of the package. */
    var Summary(default,default):String;
    /** Full description of the package. */
    var Description(default,default):String;
    /** Link to the thumbnail image of this package. */
    var Thumb(default,default):String;
    /** Link to the thumbnail image of this package. */
    @:protected
    var ThumbWide(default,null):String;
    /** Link to the thumbnail image of this package. */
    @:protected
    var ThumbTall(default,null):String;
    /** Link to the thumbnail video of this package. */
    var VideoThumb(default,default):String;
    /** Engine version this package was uploaded with. This is useful for when the base game undergoes large API changes. */
    var EngineVersion(default,default):Int;
    /** List of tags for this package. */
    var Tags(default,default):Array<String>;
    /** List of packages that this package depends on. These will be downloaded and installed when installing this package. */
    var PackageReferences(default,default):Array<String>;
    /** List of packages that this package depended on during editing. */
    var EditorReferences(default,default):Array<String>;
    /** What kind of package it is. */
    var PackageType(default,default):sandbox.package.Type;
    /** What kind of package it is. */
    var TypeName(default,default):String;
    /** Whether this package is public or hidden. */
    var Public(default,default):Bool;
    /** Whether this package is archived or not. */
    var Archived(default,default):Bool;
    /** The total size of this package in MB. This only applies to packages from Asset Party, the total file size of local packages are not calculated. */
    var FileSize(default,never):Single;
    /** Statistics for user interactions with this package */
    var Usage(default,default):sandbox.package.PackageUsageStats;
    /** Number of players who added this package to their favourites. */
    var Favourited(default,default):Int;
    /** Number of players who voted this package up. */
    var VotesUp(default,default):Int;
    /** Number of players who voted this package down. */
    var VotesDown(default,default):Int;
    /** Link to this package's sources, if set. */
    var Source(default,default):String;
    /** For game extension compatibility. Game targeting extensions are only compatible with that game if the API Versions match. */
    var ApiVersion(default,default):Int;
    /** A list of screenshots */
    var Screenshots(default,default):Array<sandbox.package.Screenshot>;
    /** True if this asset is in our favourite list. */
    var IsFavourite(default,never):Bool;
    /** True if we're a member of this package's organization. */
    var CanEdit(default,never):Bool;
    /** A link to this asset on our backend */
    var Url(default,never):String;
    /** When the entry was last updated. If these are different between packages then something updated on the backend. */
    var Updated(default,default):system.DateTimeOffset;
    /** When the package was originally created. */
    var Created(default,default):system.DateTimeOffset;
    /** How many collections we're in (roughly) */
    var Collections(default,default):Int;
    /** How many packages we're referencing (roughly) */
    var Referencing(default,default):Int;
    /** How many packages we're referenced by (roughly) */
    var Referenced(default,default):Int;
    /** Stats for the reviews. Gives the number of reviews, and the fraction of the total score. */
    var Reviews(default,default):sandbox.package.ReviewStats;
    /** What fraction of users got errors from this package in the last day */
    var ErrorRate(default,default):Single;
    /** The latest news post created by this package */
    var LatestNewsPost(default,default):sandbox.services.News;
    /** Information about the current package revision/version. */
    var Revision(default,never):sandbox.package.IRevision;
    /** Describes the authenticated user's interactions with this package. This is only available clientside for specific users in order to show things like play history state, favourite status and whether they have rated the item or not. */
    var Interaction(default,default):sandbox.package.PackageInteraction;
    /** If this package is a game, it can provide media to show on the loading screen */
    var LoadingScreen(default,default):sandbox.package.LoadingScreenSetup;
    /** Gets the name of the primary asset path stored in the package metadata. This could be null or empty. */
    var PrimaryAsset(default,never):String;
    /** Find package information */
    static function Fetch(identString:String, partial:Bool):system.threading.tasks.Task1<sandbox.Package>;
    /** Find package information */
    static overload function FetchAsync(identString:String, partial:Bool):system.threading.tasks.Task1<sandbox.Package>;
    static overload function FetchAsync(identString:String, partial:Bool, useCache:Bool):system.threading.tasks.Task1<sandbox.Package>;
    /** Get package version list */
    static function FetchVersions(identString:String, token:system.threading.CancellationToken):system.threading.tasks.Task1<system.collections.generic.List<sandbox.package.IRevision>>;
    /** Retrieve a list of packages */
    static function FindAsync(query:String, take:Int, skip:Int, token:system.threading.CancellationToken):system.threading.tasks.Task1<sandbox.package.FindResult>;
    /** Produces a package ident of the form .[#|#]. */
    static function FormatIdent(org:String, package:String, version:Null<Int>, local:Bool):String;
    /** Get a list of achievements */
    function GetAchievements():system.threading.tasks.ValueTask1<sandbox.AchievementCollection>;
    overload function GetCachedMeta<T>(keyName:String, defaultValue:T):T;
    overload function GetCachedMeta<T>(keyName:String, defaultValue:system.Func1<T>):T;
    /** If we have this package information, try to get its name */
    static function GetCachedTitle(ident:String):String;
    function GetMeta<T>(keyName:String, defaultValue:T):T;
    function GetValue<T>(name:String, defaultValue:T):T;
    /** Check if the package is installed and mounted */
    function IsMounted():Bool;
    /** Retrieve a list of packages, organised into groups, for discovery */
    static function ListAsync(id:String, token:system.threading.CancellationToken):system.threading.tasks.Task1<sandbox.package.ListResult>;
    /** Download and mount this package. If withCode is true we'll try to load the assembly if it exists. */
    function MountAsync(withCode:Bool):system.threading.tasks.Task1<sandbox.BaseFileSystem>;
    /** Sort the given list of packages so that referenced packages are ordered before the packages that reference them. */
    static overload function SortByReferences(unordered:system.collections.generic.IEnumerable<sandbox.Package>):system.collections.generic.IEnumerable<sandbox.Package>;
    static overload function SortByReferences<T>(unordered:system.collections.generic.IEnumerable<T>, getPackageFunc:system.Func2<T,sandbox.Package>):system.collections.generic.IEnumerable<T>;
    static function TryGetCached(identString:String, package:sandbox.Package, allowPartial:Bool):Bool;
    static function TryParseIdent(ident:String, parsed:system.ValueTuple4<String,String,Null<Int>,Bool>):Bool;
}
