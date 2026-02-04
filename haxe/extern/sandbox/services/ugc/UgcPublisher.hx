package sandbox.services.ugc;

/** A class that can be used to update a workshop file. This is inaccessible in game. Instead, use the publisher modal. */
@:native("Sandbox.Services.Ugc.UgcPublisher")
extern class UgcPublisher {
    var ItemId(default,never):system.UInt64;
    var NeedsLegalAgreement(default,never):Bool;
    var IsPublishing(default,never):Bool;
    var IsFinished(default,never):Bool;
    var PercentComplete(default,never):Single;
    @:protected function Finalize():Void;
    function SetContentFile(fullPath:String):Void;
    function SetDescription(value:String):Void;
    function SetKeyValue(key:String, value:String):Void;
    function SetMetaData(metadata:String):Void;
    function SetPreviewImage(value:String):Void;
    function SetTag(tag:String):Void;
    function SetTitle(value:String):Void;
    function SetVisibility(value:sandbox.storage.Visibility):Void;
    function Submit(changeNotes:String):system.threading.tasks.Task1<Bool>;
}
