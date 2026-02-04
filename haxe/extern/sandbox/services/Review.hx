package sandbox.services;

/** Package Reviews */
@:native("Sandbox.Services.Review")
final extern class Review {
    function new():Void;
    /** The player who made the review */
    var Player(default,default):sandbox.services.players.Profile;
    /** The actual content (text only right now) */
    var Content(default,default):String;
    /** The score of the review */
    var Score(default,default):sandbox.services.review.ReviewScore;
    /** How many seconds this user played */
    var PlayTime(default,default):system.TimeSpan;
    /** Date this review was updated */
    var Updated(default,default):system.DateTimeOffset;
    static function Fetch(packageIdent:String, take:Int, skip:Int):system.threading.tasks.Task1<Array<sandbox.services.Review>>;
    static function Get(packageIdent:String, steamid:sandbox.SteamId):system.threading.tasks.Task1<sandbox.services.Review>;
}
