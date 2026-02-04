package sandbox;

/** Created by the editor when publishing a resource, passed into Resource.ConfigurePublishing. This allows the resource to configure how it wants to be published. */
@:native("Sandbox.ResourcePublishContext")
final extern class ResourcePublishContext {
    function new():Void;
    /** Can be set to false using SetPublishingDisabled */
    var PublishingEnabled(default,never):Bool;
    /** If publishing is disabled this will be the message to display why. */
    var ReasonForDisabling(default,never):String;
    /** A function to create a thumbnail for this resource. If not null, this will be called to create the thumbnail. */
    var CreateThumbnailFunction(default,default):system.Func1<sandbox.Bitmap>;
    /** If true we'll include the addon's code with this */
    var IncludeCode(default,default):Bool;
    /** If true then we'll offer an option to upload source files with this asset. This will make it easier for people who want to download and add it to their project, but make their own changes. */
    var CanIncludeSourceFiles(default,default):Bool;
    /** Allows you to disable publishing for this resource, with a reason that'll be shown to the user. */
    function SetPublishingDisabled(reason:String):Void;
}
