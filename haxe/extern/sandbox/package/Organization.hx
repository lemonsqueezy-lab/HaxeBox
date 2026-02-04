package sandbox.package;

/** Represents an organization on Asset Party. Organization owns packages. */
@:native("Sandbox.Package.Organization")
extern class Organization {
    function new():Void;
    /** Unique string that identifies this organization. */
    var Ident(default,default):String;
    /** Full or "nice" name of this organization. */
    var Title(default,default):String;
    /** Link to Twitter of this organization, if set. */
    var SocialTwitter(default,default):String;
    /** Link to the website of this organization, if set. */
    var SocialWeb(default,default):String;
    /** Description of this organization. */
    var Description(default,default):String;
    /** Link to the thumbnail image of this organization. */
    var Thumb(default,default):String;
    /** When the organization was created. */
    var Created(default,default):system.DateTimeOffset;
}
